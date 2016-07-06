module Phcmembers
	class Directory::Listing < ActiveRecord::Base

		# Add Paper Trail
		has_paper_trail
    
		# Model Relationship
		belongs_to :category, class_name: 'Directory::Category'
		belongs_to :business, class_name: 'Members::Business'

		# Validation for Form Fields
		validates :business_id,
			presence: true

		# Validation for Form Fields
		validates :category_id,
			presence: true

	end
end
