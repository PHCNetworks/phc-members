module Phcmembers
	class Member::Profile < ApplicationRecord

		# Add Paper Trail
		has_paper_trail

		# Gravatar
		include Gravtastic
		gravtastic :memail

		# Model Relationship
		has_many :addresses, class_name: 'Phcmembers::Member::Address'
		has_many :listings, class_name: 'Phcmembers::Member::Listing'

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
			length: { minimum: 6 }

		validates :mphone,
			presence: true,
			format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Number Format: xxx-xxx-xxxx" }

	end
end
