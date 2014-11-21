class Product < ActiveRecord::Base
	belongs_to :category

	validates :product_name, :product_description, :unit_price,
			  :retail_price, :stock_quantity, presence: true
	validates :stock_quantity, numericality: { only_integer: true }
	validates :unit_price, :retail_price, numericality: { greater_than_or_equal_to: 0.01 }

end
