class Album < ApplicationRecord
	belongs_to :user
	has_many :photos
	mount_uploader :cover, CoverUploader
end
