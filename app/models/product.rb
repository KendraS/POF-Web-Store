class Product < ActiveRecord::Base
	# Carrierwave
	mount_uploader :image, ImageUploader

	belongs_to :category
	#has_many :line_items
	#before_destroy :ensure_not_referenced_by_any_line_item
	
	validates :product_name, :product_description, :unit_price, :retail_price,
			  :stock_quantity, presence: true
	validates :stock_quantity, numericality: { only_integer: true }
	validates :unit_price, :retail_price, numericality: { greater_than_or_equal_to: 0.01 }

	# Add method on the class
	def self.keyword_search(keywords)
		keywords = "%" + keywords + "%"
		Product.where("product_name LIKE ? OR product_description LIKE ?", keywords, keywords)
	end

	# private

	#  Will be called before Rails attempts to destroy a row in the database
	# def ensure_not_referenced_by_any_line_item
 #      if line_items.empty?
 #        return true

 #      else
 #        errors.add(:base, 'Line Items present')
 #        return false
 #      end
 #    end

end
