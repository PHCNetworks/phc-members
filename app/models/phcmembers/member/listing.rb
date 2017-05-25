module Phcmembers
	class Member::Listing < ApplicationRecord

		# Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcmembers::ListingVersions'

    # Model Relationships
		belongs_to :profile, class_name: 'Phcmembers::Member::Profile'
		has_many :categorylistings, class_name: 'Phcmembers::Directory::Categorylisting', dependent: :destroy
		has_many :categories, class_name: 'Phcmembers::Directory::Category', :through => :categorylistings

		# Validation for Form Fields
		validates :mbcompanyname,
		presence: true,
		length: { minimum: 2 }

		validates :mbcontactname,
		presence: true,
		length: { minimum: 2 }

		validates :mbaddressl1,
		length: { minimum: 3 }

		validates :mbcity,
		presence: true,
		length: { minimum: 3 }

		validates :mbcountry,
		presence: true,
		length: { minimum: 2 }

		validates :mbprovince,
		presence: true,
		length: { minimum: 2 }

		validates :mbpostalcode,
		presence: true,
		length: { minimum: 3 }

		validates :mbcontactemail,
		presence: true,
		length: { minimum: 3 }

		validates :mbwebsite,
		presence: true,
		length: { minimum: 6 }

		validates :mbphone,
		presence: true,
		format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Number Format: xxx-xxx-xxxx" }

		# Clean URL Define
		friendly_id :phcmembers_listings_slug, use: [:slugged, :finders]

		# Define for Multiple Records
		def phcmembers_listings_slug
			[
				[:mbcompanyname, :mbcontactname]
			]
		end

	end
end
