module Phcmembers
	class Member::Address < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Model Relationship
		has_many :memberaddresses, class_name: 'Phcmembers::Connection::Memberaddress', dependent: :destroy
		has_many :profiles, class_name: 'Phcmembers::Member::Profile', :through => :memberaddresses

	end
end
