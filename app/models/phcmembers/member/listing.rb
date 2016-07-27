module Phcmembers
	class Member::Listing < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Model Relationships
		belongs_to :profile, class_name: 'Phcmembers::Member::Profile'
		#belongs_to :category, class_name: 'Phcmembers::Directory::Category'
		
		#has_many :memberlistings, class_name: 'Phcmembers::Connection::Memberlisting', dependent: :destroy


	end
end
