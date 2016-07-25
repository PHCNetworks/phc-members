module Phcmembers
	class Directory::Listing < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Model Relationships
		has_many :categorylistings, class_name: 'Phcmembers::Connections::Categorylisting', dependent: :destroy
		has_many :categories, class_name: 'Phcmembers::Directory::Category', :through => :categorylistings
		
		#has_many :memberlistings, class_name: 'Phcmembers::Connection::Memberlisting', dependent: :destroy
		#has_many :profiles, class_name: 'Phcmembers::Member::Profile', :through => :memberlistings

	end
end
