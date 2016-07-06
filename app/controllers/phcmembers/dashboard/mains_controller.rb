require_dependency "phcmembers/application_controller"

module Phcmembers
	class Dashboard::MainsController < ApplicationController

		# Dashboard Index
		def index
			@members_main = Phcmembers::Members::Main
			@members_business = Phcmembers::Members::Business
			@members_contact = Phcmembers::Members::Contact

			@directory_category = Phcmembers::Directory::Category
			@directory_catlists = Phcmembers::Directory::Listing
		end

		private

	end
end
