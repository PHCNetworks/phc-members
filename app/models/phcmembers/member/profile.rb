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
    has_many :addresses, class_name: 'Phcmembers::Member::Address', :dependent => :destroy
    has_many :listings, class_name: 'Phcmembers::Member::Listing', :dependent => :destroy

    # Validation for Form Fields
    validates :member_first_name,
      presence: true,
      length: { minimum: 1 }

    validates :member_last_name,
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
        [:member_first_name, :member_last_name]
      ]
    end

  end
end
