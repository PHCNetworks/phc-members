module Phcmembers
	class Member::Address < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Model Relationships
		belongs_to :profile, class_name: 'Phcmembers::Member::Profile'

	end
end