class Picture < ActiveRecord::Base
	attr_accessible :image, :name
	mount_uploader :image, PicsUploader


	# Lesson 36 @3:00
		validates :name, :presence => true # Won't save unless a name provided
		validates :image, :presence => true
end
