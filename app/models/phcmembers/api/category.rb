module Phcmembers
	class Api::Category < ActiveRecord::Base
	
		# Model Relationship
		has_many :catlists, class_name: 'Directory::Catlist'
	
	end
end
