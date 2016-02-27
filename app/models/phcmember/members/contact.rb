module Phcmember
	class Members::Contact < ActiveRecord::Base

		# Mtdevise Scope
		def self.scoped_to(account)
			where(:account_id => account.id)
		end

		# Model Relationships
		belongs_to :main

		# Validation for Form Fields
		validates :mafullname,
			presence: true,
			length: { minimum: 3 }

		validates :macompanyname,
			presence: true,
			length: { minimum: 2 }

		validates :macity,
			presence: true,
			length: { minimum: 3 }

		validates :maprovince,
			presence: true,
			length: { minimum: 2 }

		validates :mapostalcode,
			presence: true,
			length: { minimum: 6 }

	end
end
