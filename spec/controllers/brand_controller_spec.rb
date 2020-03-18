require 'rails_helper'

RSpec.describe BrandController, type: :controller do
  render_views

  describe 'GET #show' do
    let(:brand) {create :brand}
    let!(:products) {create_list :product, 2, brand: brand}

    subject{ get(:show, params: {id: brand.id}) }

    context 'find products for this brand' do
      it 'render to show view' do
        is_expected.to render_template :show
        expect(response.body).to include(products.first.title)
      end
    end
  end
end
