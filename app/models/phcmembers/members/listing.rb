module Phcmembers
	class Members::Listing < ActiveRecord::Base

		# Mtdevise Scope
		def self.scoped_to(account)
			where(:account_id => account.id)
		end

		# Model Relationships
		belongs_to :main, class_name: 'Members::Main'
		has_many :catlists, class_name: 'Directory::Catlist', dependent: :destroy

		# Validation for Form Fields
		validates :mlcontactname,
			presence: true,
			length: { minimum: 3 }

		validates :mlcompanyname,
			presence: true,
			length: { minimum: 2 }

		validates :mlcity,
			presence: true,
			length: { minimum: 3 }

		validates :mlprovince,
			presence: true,
			length: { minimum: 2 }

		validates :mlpostalcode,
			presence: true,
			length: { minimum: 6 }

		validates :mlcountry,
			presence: true,
			length: { minimum: 6 }

		validates :mlphone,
			presence: true,
			format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Number Format: xxx-xxx-xxxx" }

		validates :mlwebsite,
			presence: true,
			length: { minimum: 3 }

	end
end
