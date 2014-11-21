class Product < ActiveRecord::Base
	belongs_to :category

	validates :product_name, :product_description, :unit_price,
			  :retail_price, :stock_quantity, presence: true

end
