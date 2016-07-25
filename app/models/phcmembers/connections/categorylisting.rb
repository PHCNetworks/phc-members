module Phcmembers
	class Connections::Categorylisting < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Relationships
		belongs_to :category, class_name: 'Phcmembers::Directory::Category'
		belongs_to :listing, class_name: 'Phcmembers::Directory::Listing'

	end
end
