class ProductsController < ApplicationController
	def index
		@page_title = 'All Products'
		@products = Product.all
	end
	# The @products variable will now be accessible from the
	# automatically loaded view: app/views/products/index.html.erb

	def dry_food

	end


	def wet_food

	end


	def biscuits_and_treats

	end


end
