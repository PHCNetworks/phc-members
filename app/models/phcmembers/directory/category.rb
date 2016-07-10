module Phcmembers
	class Directory::Category < ActiveRecord::Base

		# Add Paper Trail
		has_paper_trail

		# Model Relationship
		has_many :listings, class_name: 'Directory::Listing', dependent: :destroy
		has_many :businesses, class_name: 'Members::Business', :through => :listings

		# Validation for Form Fields
		validates :catname,
			presence: true,
			length: { minimum: 3 }

	end
end
