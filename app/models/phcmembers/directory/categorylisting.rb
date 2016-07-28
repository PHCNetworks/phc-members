module Phcmembers
	class Directory::Categorylisting < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Model Relationships
		belongs_to :listing, class_name: 'Phcmembers::Member::Listing'
		belongs_to :category, class_name: 'Phcmembers::Directory::Category'

	end
end
