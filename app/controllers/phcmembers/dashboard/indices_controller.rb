require_dependency "phcmembers/application_controller"

module Phcmembers
	class Dashboard::IndicesController < ApplicationController

		# Filters
		before_action :authenticate_user!

		# Dashboard Index
		def index
			@members_main = Members::Main.all
			@members_listing = Members::Listing.all
			@members_contact = Members::Contact.all

			@directory_category = Directory::Category.all
			@directory_catlists = Directory::Catlist.all
		end
 
	end
end
