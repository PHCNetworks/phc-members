module Phcmember
	class Members::Contact < ActiveRecord::Base

		# Mtdevise Scope
		def self.scoped_to(account)
			where(:account_id => account.id)
		end

		# Model Relationships
		belongs_to :main

		# Validation for Form Fields
		validates :mccontactname,
			presence: true,
			length: { minimum: 3 }

		validates :mccompanyname,
			presence: true,
			length: { minimum: 2 }

		validates :mccity,
			presence: true,
			length: { minimum: 3 }

		validates :mcprovince,
			presence: true,
			length: { minimum: 2 }
			
		validates :mccountry,
			presence: true,
			length: { minimum: 2 }

		validates :mcpostalcode,
			presence: true,
			length: { minimum: 6 }

	end
end
