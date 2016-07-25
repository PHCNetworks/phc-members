module Phcmembers
	class Connections::Memberlisting < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Relationships
		belongs_to :profile, class_name: 'Phcmembers::Member::Profile'
		belongs_to :listing, class_name: 'Phcmembers::Directory::Listing'

	end
end
