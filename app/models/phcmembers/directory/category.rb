module Phcmembers
	class Directory::Category < ApplicationRecord
	
		# Clean URL Initialize
		extend FriendlyId
		
		# Paper_tail Initialize
		has_paper_trail :class_name => 'Phcmembers::CategoryVersions'
		
		# Relationships
		has_and_belongs_to_many :listings, class_name: 'Phcmembers::Member::Listing', :join_table => 'categories_listings'
		
		validates :category_name,
		  length: { minimum: 3 }
		
		# Clean URL Define
		friendly_id :phcmembers_category_slug, use: [:slugged, :finders]
		
		# Define for Multiple Records
		def phcmembers_category_slug
			[
				:category_name
			]
		end
	
	end
end
