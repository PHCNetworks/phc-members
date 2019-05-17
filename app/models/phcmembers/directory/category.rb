module Phcmembers
	class Directory::Category < ApplicationRecord

    # Clean URL Initialize
		extend FriendlyId

		# Paper Trail Initialize
		has_paper_trail :class_name => 'Phcmembers::CategoryVersions'

    # Relationships
		has_and_belongs_to_many :listings, class_name: 'Phcmembers::Member::Listing', :join_table => 'categories_listings', :dependent => :destroy

    # Form Fields Validation
		validates :category_name,
			presence: true

    # Clean URL Define
		friendly_id :phc_nice_url_slug, use: [:slugged, :finders]

		def phc_nice_url_slug
			[:category_name]
		end

	end
end
