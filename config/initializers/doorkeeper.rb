# frozen_string_literal: true

Doorkeeper.configure do
  orm :active_record

  resource_owner_authenticator do
    current_user || warden.authentication(scope: :user)
  end

  admin_authenticator do
    current_user.try(:admin) || redirect_to(new_user_session_path)
  end

  authorization_code_expires_in 2.hours
  access_token_expires_in 2.hours

  default_scopes :public
  optional_scopes :write, :update
end
