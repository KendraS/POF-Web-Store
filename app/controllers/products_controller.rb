class ProductsController < ApplicationController
	def index
		@page_title = 'All Products'
		#@products = Product.all
		@products = Product.order("product_name").page(params[:page]).per(5)  
	end


end
