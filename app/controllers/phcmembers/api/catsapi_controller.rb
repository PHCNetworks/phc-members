require_dependency "phcmembers/application_controller"

module Phcmembers
	class Api::CatsapiController < ApplicationController

		# Only Responds to API Requests
		respond_to :json

		# Directory Category API
		def index
			@directory_categories = Directory::Category.order('catname ASC')
		end

	end
end
