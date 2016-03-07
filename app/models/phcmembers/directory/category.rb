module Phcmembers
	class Directory::Category < ActiveRecord::Base

		# Mtdevise Scope
		def self.scoped_to(account)
			where(:account_id => account.id)
		end

		# Model Relationship
		has_many :catlists, class_name: 'Directory::Catlist'

		# Validation for Form Fields
		validates :catname, 
			presence: true,
			uniqueness: true,
			length: { minimum: 3 }

	end
end
