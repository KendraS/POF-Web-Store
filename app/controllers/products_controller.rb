class ProductsController < ApplicationController
  def index
    @page_title = 'All Products'
    @products = Product.all.order('product_name').page(params[:page]).per(6)
  end

  # Get individual product
  # View: app/views/products/show.html.erb
  def show
    @product = Product.find(params[:id])
  end

  # def name
  #    self.product_name
  # end


end
