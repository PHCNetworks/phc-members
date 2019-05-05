module Phcmembers
  class Member::Address < ApplicationRecord

		# Clean URL Initialize
		extend FriendlyId

		# Add Paper Trail
		has_paper_trail :class_name => 'Phcmembers::AddressVersions'

		# Model Relationships
    belongs_to :profile, class_name: 'Phcmembers::Member::Profile'

    # Validation for Form Fields
    validates :address_addressl1,
      presence: true,
      length: { minimum: 2 }

    validates :address_city,
      length: { minimum: 3 }

    validates :address_province,
      presence: true,
      length: { minimum: 2 }

    validates :address_country,
      presence: true,
      length: { minimum: 2 }

    validates :address_postalcode,
      presence: true,
      length: { minimum: 3 }

    validates :address_type,
      presence: true,
      length: { minimum: 2 }

    # Clean URL Define
		friendly_id :phcmembers_address_slug, use: [:slugged, :finders]

		# Define for Multiple Records
		def phcmembers_address_slug
			[
				[:org_id, :address_addressl1, :address_city, :address_province]
			]
		end

  end
end
