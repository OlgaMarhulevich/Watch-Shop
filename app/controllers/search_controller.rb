class SearchController < ApplicationController

  def index
    @products = text_search
    #@products = Product.where("title LIKE ?", "%#{search_params[:query]}%")
  end

  def search_params
    params.permit(:query)
  end

  def text_search
    search_text = ['%', search_params[:query].strip, '%'].join
    Product.where('title ILIKE ?', search_text)
  end

  def set_page_options
    set_meta_tags title: 'Search'
    add_breadcrumb 'Home', :root_path, title: 'Home'
  end

end
