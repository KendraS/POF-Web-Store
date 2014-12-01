class ProductsController < ApplicationController
  def index
    @page_title = 'All Products'
    @products = Product.order("product_name").page(params[:page]).per(5)  
  end

  # Get individual product
  # View: app/views/products/show.html.erb
  def show
    @product = Product.find(params[:id])
  end

end
