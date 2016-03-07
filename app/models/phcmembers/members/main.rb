module Phcmembers
	class Members::Main < ActiveRecord::Base

		# Model Relationship
		has_many :listings, class_name: 'Members::Listing', dependent: :destroy
		has_many :contacts, class_name: 'Members::Contact', dependent: :destroy

		# Validation for Form Fields
		validates :mfirstname,
			presence: true,
			length: { minimum: 1 }

		validates :mlastname,
			presence: true,
			length: { minimum: 1 }

		validates :mtitle,
			length: { minimum: 2 }

		validates :memail,
			presence: true,
			uniqueness: true,
			length: { minimum: 6 }

		validates :mphone,
			presence: true,
			uniqueness: true,
			format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Number Format: xxx-xxx-xxxx" }

	end
end
