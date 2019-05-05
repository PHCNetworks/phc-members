module Phcmembers
  class Member::Profile < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcmembers::ProfileVersions'

    # Gravatar
    include Gravtastic
    gravtastic :member_email

    # Model Relationships
    has_many :addresses, class_name: 'Phcmembers::Member::Address'
    has_many :listings, class_name: 'Phcmembers::Member::Listing'

    # Validation for Form Fields
    validates :member_firstname,
      presence: true,
      length: { minimum: 1 }

    validates :member_lastname,
      presence: true,
      length: { minimum: 1 }

    validates :member_title,
      length: { minimum: 2 }

    validates :member_email,
      presence: true,
      length: { minimum: 6 },
      format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please follow this Email format: *****@********.***" }

    validates :member_phone,
      presence: true,
      format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Number Format: ***-***-****" }

    # Clean URL Define
    friendly_id :phcmembers_profiles_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcmembers_profiles_slug
      [
        [:org_id, :member_firstname, :member_lastname]
      ]
    end

  end
end
