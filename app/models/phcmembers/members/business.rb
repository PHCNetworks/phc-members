module Phcmembers
	class Members::Business < ActiveRecord::Base

		# Add Paper Trail
		has_paper_trail

		# Translate Country Code to Name
		def country_name
			country = ISO3166::Country[mccountry]
			country.translations[I18n.locale.to_s] || country.name
		end

		# Model Relationship
		has_many :listings, class_name: 'Directory::Listing'
		has_many :categories, class_name: 'Directory::Category', :through => :listings
		belongs_to :main, class_name: 'Members::Main'

		# Validation for Form Fields
		validates :mbcompanyname,
			presence: true,
			length: { minimum: 3 }

		validates :mbcontactname,
			presence: true,
			length: { minimum: 2 }

		validates :mbcity,
			presence: true,
			length: { minimum: 3 }

		validates :mbprovince,
			presence: true,
			length: { minimum: 2 }

		validates :mbcountry,
			presence: true,
			length: { minimum: 2 }

		validates :mbpostalcode,
			presence: true,
			length: { minimum: 6 }
 
	end
end
