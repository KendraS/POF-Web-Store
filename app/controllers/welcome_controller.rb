class WelcomeController < ApplicationController
	def index
		@page_title = 'All Products'
		@products = Product.all
	end
	# The @products variable will now be accessible from the
	# automatically loaded view: app/views/products/index.html.erb

	def dry_food
		@page_title = 'Dry Food'
		@products = Product.all.where(category_id: "1")
	end


	def wet_food
		@page_title = 'Wet Food'
		#@products = Product.all.where(email: "2")
	end


	def biscuits_and_treats
		@page_title = 'Biscuits and Treats'
		#@products = Product.all.where(email: "3")
	end


end
