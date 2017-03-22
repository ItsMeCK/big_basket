class Item < ApplicationRecord
	validates :price, numericality: {greater_than_or_equal_to: 0}

	mount_uploader :images, ImageUploader
    mount_uploaders :avatars, ImageUploader
  	serialize :avatars, JSON # If you use SQLite, add this line.
end
