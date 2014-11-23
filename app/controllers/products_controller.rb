class ProductsController < ApplicationController
	def index
		@page_title = 'All Products'
		@products = Product.all
	end


end
