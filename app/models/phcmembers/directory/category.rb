module Phcmembers
	class Directory::Category < ApplicationRecord

		# Clean URL Initialize
		extend FriendlyId

		# Paper_tail Initialize
		has_paper_trail :class_name => 'Phcmembers::CategoryVersions'

		# Relationships
		has_many :categorylistings, class_name: 'Phcmembers::Directory::Categorylisting', dependent: :destroy
		has_many :listings, class_name: 'Phcmembers::Member::Listing', :through => :categorylistings

		validates :catname,
    length: { minimum: 3 }

    # Clean URL Define
    friendly_id :phcmembers_category_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcmembers_category_slug
    [
      :catname,
      [:catname, :id]
    ]
    end

	end
end
