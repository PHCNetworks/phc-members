module Phcmembers
	class Member::Listing < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

		# Add Paper Trail
		has_paper_trail

		# Model Relationships
		belongs_to :profile, class_name: 'Phcmembers::Member::Profile'
		has_many :categorylistings, class_name: 'Phcmembers::Directory::Categorylisting', dependent: :destroy
		has_many :categories, class_name: 'Phcmembers::Directory::Category', :through => :categorylistings

		# Clean URL Define
    friendly_id :businessmemberfullname, use: :slugged

    # Define for Multiple Records
    def businessmemberfullname
      [
        [:mbcompanyname, :mbcontactname]
      ]
    end

	end
end
