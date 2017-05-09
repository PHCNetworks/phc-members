module Phcmembers
	class Member::Address < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

		# Add Paper Trail
		has_paper_trail

		# Model Relationships
		belongs_to :profile, class_name: 'Phcmembers::Member::Profile'

		# Clean URL Define
		friendly_id :id, use: :slugged

	end
end
