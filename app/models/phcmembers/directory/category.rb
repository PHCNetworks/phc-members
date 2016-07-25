module Phcmembers
	class Directory::Category < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Model Relationships
		has_many :categorylistings, class_name: 'Phcmembers::Connections::Categorylisting', dependent: :destroy
		has_many :listings, class_name: 'Phcmembers::Directory::Listing', :through => :categorylistings

	end
end
