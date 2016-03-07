module Phcmembers
	class Directory::Catlist < ActiveRecord::Base

		# Model Relationship
		belongs_to :category, class_name: 'Directory::Category'
		belongs_to :listing, class_name: 'Members::Listing'

		# Validation for Form Fields (More of a Self-Check)
		validates :listing_id, 
			presence: true

		# Validation for Form Fields (More of a Self-Check)
		validates :category_id, 
			presence: true

	end
end
