module Phcmembers
	class Directory::Categorylisting < ApplicationRecord

		# Paper_tail Initialize
		has_paper_trail :class_name => 'Phcmembers::CategoryListingVersions'

		# Relationships
		belongs_to :listing, class_name: 'Phcmembers::Member::Listing'
		belongs_to :category, class_name: 'Phcmembers::Directory::Category'

	end
end
