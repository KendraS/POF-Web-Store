class Category < ActiveRecord::Base
	has_many :products

	validates :category_name, :category_description, presence: true

end
