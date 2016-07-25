module Phcmembers
	class Connections::Memberaddress < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Relationships
		belongs_to :profile, class_name: 'Phcmembers::Member::Profile'
		belongs_to :address, class_name: 'Phcmembers::Member::Address'

	end
end
