module Phcmembers
	class Member::Listing < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Model Relationships
		belongs_to :profile, class_name: 'Phcmembers::Member::Profile'
		has_many :categorylistings, class_name: 'Phcmembers::Directory::Categorylisting', dependent: :destroy
		has_many :categories, class_name: 'Phcmembers::Directory::Category', :through => :categorylistings

	end
end