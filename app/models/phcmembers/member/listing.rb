module Phcmembers
	class Member::Listing < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Translate Country Code to Name
		def country_name
			country = ISO3166::Country[mccountry]
			country.translations[I18n.locale.to_s] || country.name
		end

		# Model Relationships
		belongs_to :profile, class_name: 'Phcmembers::Member::Profile'
		#belongs_to :category, class_name: 'Phcmembers::Directory::Category'
		
		#has_many :memberlistings, class_name: 'Phcmembers::Connection::Memberlisting', dependent: :destroy


	end
end
