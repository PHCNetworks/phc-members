module Phcmembers
	class Members::Contact < ActiveRecord::Base

		# Model Relationships
		belongs_to :main, class_name: 'Members::Main'

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
