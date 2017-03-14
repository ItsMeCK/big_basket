class Item < ApplicationRecord
	validates :name, :price, :image, :provider , presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0}

	mount_uploader :image, ImageUploader
end
