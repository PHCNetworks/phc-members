module Phcmembers
	class Members::Contact < ActiveRecord::Base

		# Add Paper Trail
		has_paper_trail

		# Translate Country Code to Name
		def country_name
			country = ISO3166::Country[mccountry]
			country.translations[I18n.locale.to_s] || country.name
		end

		# Model Relationships
		belongs_to :main, class_name: 'Members::Main'

		# Validation for Form Fields
		validates :mccity,
			presence: true,
			length: { minimum: 3 }

		validates :mcprovince,
			presence: true,
			length: { minimum: 2 }

		validates :mccountry,
			presence: true,
			length: { minimum: 2 }

		validates :mcpostalcode,
			presence: true,
			length: { minimum: 6 }

	end
end
