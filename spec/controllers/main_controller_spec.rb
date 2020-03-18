require 'rails_helper'

RSpec.describe MainController, type: :controller do

  describe 'GET #index' do
    let(:brands) {create_list :brand, 3}
    let(:hits)   {create_list :product, 8}

    before {get :index}

    context 'required output per page' do
      it 'render to index template' do
        is_expected.to render_template :index
      end
    end
  end
end
