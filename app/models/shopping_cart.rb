class ShoppingCart < ActiveRecord::Base
	acts_as_shopping_cart

	def shipping_cost
    	5 # flat $5 rate
  	end
end
