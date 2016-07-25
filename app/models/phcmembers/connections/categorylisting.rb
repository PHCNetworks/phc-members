module Phcmembers
	class Connections::Categorylisting < ApplicationRecord

		# Relationship
		belongs_to :category, class_name: 'Phcmembers::Directory::Category'
		belongs_to :listing, class_name: 'Phcmembers::Connection::Categorylisting'

	end
end
