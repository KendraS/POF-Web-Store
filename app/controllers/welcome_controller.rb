class WelcomeController < ApplicationController
	def index
		@page_title = 'Nourishing your pet from the inside out'
	end
	# The @products variable will now be accessible from the
	# automatically loaded view: app/views/products/index.html.erb


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

	# Displays a search form.
	def search

	end

	# Displays search results view.
	def search_results
		#@results_of_keyword_search = Product.where("product_name LIKE ? OR product_description LIKE ?", keywords, keywords)
		@results_of_keyword_search = Product.keyword_search(params[:search_keywords])
	end


end
