class About < ActiveRecord::Base
	validates :title1, :content1, :title2, :content2, :title3, :content3, presence: true;

end
