module Phcmembers
  class Member::Listing < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId
    
    # Add Paper Trail
    has_paper_trail :class_name => 'Phcmembers::ListingVersions'
    
    # Model Relationships
    belongs_to :profile, class_name: 'Phcmembers::Member::Profile'
    has_and_belongs_to_many :categories, class_name: 'Phcmembers::Directory::Category', :join_table => 'categories_listings'
    
    # Validation for Form Fields
    validates :listing_company_name,
      presence: true,
      length: { minimum: 2 }
    
    validates :listing_contact_name,
      presence: true,
      length: { minimum: 2 }
    
    validates :listing_address_line_1,
      length: { minimum: 3 }
    
    validates :listing_city,
      presence: true,
      length: { minimum: 3 }
    
    validates :listing_country,
      presence: true,
      length: { minimum: 2 }
    
    validates :listing_province,
      presence: true,
      length: { minimum: 2 }
    
    validates :listing_postal_code,
      presence: true,
      length: { minimum: 3 }
    
    validates :listing_contact_email,
    	presence: true,
    	length: { minimum: 3 },
    	format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please follow this Email format: *****@********.***" }
    
    validates :listing_website,
    	presence: true,
    	length: { minimum: 6 }
    
    validates :listing_phone,
    	presence: true,
    	format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Member Format: ***-***-****" }
    
    # Clean URL Define
    friendly_id :phcmembers_listings_slug, use: [:slugged, :finders]
    
    # Define for Multiple Records
    def phcmembers_listings_slug
    	[
    		[:listing_company_name, :listing_contact_name]
    	]
    end

  end
end
