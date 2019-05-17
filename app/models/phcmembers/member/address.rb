module Phcmembers
  class Member::Address < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

		# Paper Trail Initialize
    has_paper_trail :class_name => 'Phcmembers::AddressVersions'

    # Relationships
    belongs_to :profile, class_name: 'Phcmembers::Member::Profile'

    # Form Fields Validation
    validates :address_address_line_1,
      presence: true

    validates :address_city,
      presence: true

    validates :address_province,
      presence: true

    validates :address_country,
      presence: true

    validates :address_postal_code,
      presence: true

    # Clean URL Define
    friendly_id :phc_nice_url_slug, use: [:slugged, :finders]

    def phc_nice_url_slug
      [
        [:address_city, :address_province, :address_type]
      ]
    end

  end
end
