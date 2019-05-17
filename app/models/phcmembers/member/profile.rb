module Phcmembers
  class Member::Profile < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

		# Paper Trail Initialize
    has_paper_trail :class_name => 'Phcmembers::ProfileVersions'

    # Profile Gravatar
    include Gravtastic
    gravtastic :member_email

    # Relationships
    has_many :addresses, class_name: 'Phcmembers::Member::Address', :dependent => :destroy
    has_many :listings, class_name: 'Phcmembers::Member::Listing', :dependent => :destroy

    # Form Fields Validation
    validates :member_first_name,
      presence: true

    validates :member_last_name,
      presence: true

    validates :member_title,
      presence: true

    validates :member_email,
      presence: true,
      format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please follow this Email format: *****@********.***" }

    validates :member_phone,
      presence: true,
      format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Number Format: ***-***-****" }

    # Clean URL Define
    friendly_id :phc_nice_url_slug, use: [:slugged, :finders]

    def phc_nice_url_slug
      [
        [:member_first_name, :member_last_name]
      ]
    end

  end
end
