require_dependency "mtdevise/application_controller"

module Mtdevise
	class Account::DashboardController < Mtdevise::ApplicationController

		# Dashboard Filters
		layout "mtdevise/dashboard"
		before_action :authenticate_user!

        # Index 
		def index
			@members_main = Members::Main.scoped_to(current_account)
			@members_contact = Members::Contact.scoped_to(current_account)
			@members_listing = Members::Listing.scoped_to(current_account)

			@directory_category = Directory::Category.scoped_to(current_account)
			@directory_catlist = Directory::Catlist.scoped_to(current_account)
		end

	end
end
