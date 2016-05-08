class User < ActiveRecord::Base
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	mount_uploader :image, ImageUploader
	
	class << self
		def search(query)
			rel = order("id")
			if query.present?
				rel = rel.where("name LIKE ?","%#{query}")
			end
			rel
		end
	end
end
