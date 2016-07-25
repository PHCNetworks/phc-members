module Phcmembers
	class Connections::Memberlisting < ApplicationRecord

		# Relationships
		belongs_to :profile, class_name: 'Phcmembers::Member::Profile'
		belongs_to :listing, class_name: 'Phcmembers::Directory::Listing'

	end
end
