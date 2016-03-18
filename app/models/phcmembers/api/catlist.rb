module Phcmembers
	class Api::Catlist < ActiveRecord::Base
	
		# Model Relationship
		belongs_to :category, class_name: 'Directory::Category'
		belongs_to :listing, class_name: 'Members::Listing'
	
	end
end
