class ProductsController < ApplicationController
	def index
		@page_title = 'All Products'
		@products = Product.order("product_name").page(params[:page]).per(5)  
	end

	# Get product 
	def show

	end

end
