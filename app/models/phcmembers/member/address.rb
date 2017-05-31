module Phcmembers
	class Member::Address < ApplicationRecord

		# Clean URL Initialize
		extend FriendlyId

		# Add Paper Trail
		has_paper_trail :class_name => 'Phcmembers::AddressVersions'

		# Model Relationships
		belongs_to :profile, class_name: 'Phcmembers::Member::Profile'

		# Validation for Form Fields
		validates :mcaddressl1,
			presence: true,
			length: { minimum: 2 }

		validates :mccity,
			length: { minimum: 3 }

		validates :mcprovince,
			presence: true,
			length: { minimum: 2 }

		validates :mccountry,
			presence: true,
			length: { minimum: 2 }

		validates :mcpostalcode,
			presence: true,
			length: { minimum: 3 }

		validates :mctype,
			presence: true,
			length: { minimum: 2 }

		# Clean URL Define
		friendly_id :phcmembers_address_slug, use: [:slugged, :finders]

		# Define for Multiple Records
		def phcmembers_address_slug
			[
				[:mcaddressl1, :mccity, :mcprovince]
			]
		end

		def country_name
	    country = ISO3166::Country[country_code]
	    country.translations[I18n.locale.to_s] || country.mccountry
	  end

	end
end
