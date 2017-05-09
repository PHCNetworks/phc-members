module Phcmembers
	class Directory::Categorylisting < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

		# Add Paper Trail
		has_paper_trail

		# Model Relationships
		belongs_to :listing, class_name: 'Phcmembers::Member::Listing'
		belongs_to :category, class_name: 'Phcmembers::Directory::Category'

		# Clean URL Define
		friendly_id :id, use: :slugged

	end
end
