module Phcmember
	class Members::Main < ActiveRecord::Base

		# Mtdevise Scope
		def self.scoped_to(account)
			where(:account_id => account.id)
		end

		# Model Relationship
		has_many :listings, dependent: :destroy
		has_many :contacts, dependent: :destroy

		# Validation for Form Fields
			validates :mcfirstname,
				presence: true,
				length: { minimum: 1 }

			validates :mclastname,
				presence: true,
				length: { minimum: 1 }

			validates :mctitle,
				length: { minimum: 2 }

			validates :mcemail,
				presence: true,
				uniqueness: true,
				length: { minimum: 6 }

			validates :mcphone,
				presence: true,
				uniqueness: true,
				format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Number Format: xxx-xxx-xxxx" }

		end

	end
end
