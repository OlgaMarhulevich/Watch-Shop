class BrandController < ApplicationController
  def show
    @brand = Brand.find(params[:id])
    set_page_options
  end

  attr_accessor :brand

  def set_page_options
    set_meta_tags brand.slice(:title, :description)
    add_breadcrumb 'Home', :root_path, title: 'Home'
  end
end
