class Product < ActiveRecord::Base
	# Carrierwave
	#mount_uplaoder :image, ImageUploader

	belongs_to :category
	
	validates :product_name, :product_description, :unit_price, :retail_price,
			  :stock_quantity, presence: true
	validates :stock_quantity, numericality: { only_integer: true }
	validates :unit_price, :retail_price, numericality: { greater_than_or_equal_to: 0.01 }

	# Add method on the class
	def self.keyword_search(keywords)
		keywords = "%" + keywords + "%"
		Product.where("product_name LIKE ? OR product_description LIKE ?", keywords, keywords)
	end
end
