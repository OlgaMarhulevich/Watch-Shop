class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.find_for_oauth(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect @user, event: authenticate_user!
      if is_navigational_format?
        set_flash_message(:notice, :success, kind: 'Facebook')
      end
    end
  end
end