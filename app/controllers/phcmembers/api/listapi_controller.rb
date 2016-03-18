require_dependency "phcmembers/application_controller"

module Phcmembers
	class Api::ListapiController < ApplicationController

		# Only Responds to API Requests
		respond_to :json

		# Directory Listing API
		def index
			category = Directory::Category.find(params[:category_id])
			@directory_catlists = category.catlists.scoped_to(current_account)
		end

	end
end
