module Phcmembers
  class Member::Profile < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcmembers::ProfileVersions'

    # Gravatar
    include Gravtastic
    gravtastic :memail

    # Model Relationships
    has_many :addresses, class_name: 'Phcmembers::Member::Address'
    has_many :listings, class_name: 'Phcmembers::Member::Listing'

    # Validation for Form Fields
    validates :mfirstname,
      presence: true,
      length: { minimum: 1 }

    validates :mlastname,
      presence: true,
      length: { minimum: 1 }

    validates :mtitle,
      length: { minimum: 2 }

    validates :memail,
      presence: true,
      length: { minimum: 6 },
      format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please follow this Email format: *****@********.***" }

    validates :mphone,
      presence: true,
      format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Number Format: ***-***-****" }

    # Clean URL Define
    friendly_id :phcmembers_profiles_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcmembers_profiles_slug
      [
        [:org_id, :mfirstname, :mlastname]
      ]
    end

  end
end
