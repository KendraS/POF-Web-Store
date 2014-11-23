class WelcomeController < ApplicationController
	def index
		@page_title = 'Petsonix Organic Food'
	end
	# The @products variable will now be accessible from the
	# automatically loaded view: app/views/products/index.html.erb

	def about
		@page_title = 'About'
		#@products = Product.where(category_id: "1")
	end


	def ingredients
		@page_title = 'Ingredients'
		#@products = Product.where(category_id: "1")
	end


	# def products
	# 	@page_title = 'All Products'
	# 	@products = Product.all
	# end


	def contact
		@page_title = 'Contact'
		#@products = Product.where(category_id: "1")
	end


	def dry_food
		@page_title = 'Dry Food'
		@products = Product.where(category_id: "1")
	end


	def wet_food
		@page_title = 'Wet Food'
		@products = Product.where(category_id: "2")
	end


	def biscuits_and_treats
		@page_title = 'Biscuits and Treats'
		@products = Product.where(category_id: "3")
	end


	def search

	end


	def search_results
		keywords = params[:search_keywords]
		@results_of_keyword_search = Product.where(product_name: keywords)
	end


end
