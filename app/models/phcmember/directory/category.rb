module Phcmember
	class Directory::Category < ActiveRecord::Base

		# Model Relationship
		has_many :catlists

		# Validation for Form Fields
		validates :catname, 
			presence: true,
			uniqueness: true,
			length: { minimum: 3 }

	end
end
