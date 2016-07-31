require_dependency "phcmembers/application_controller"

module Phcmembers
	class Directory::CategorylistingsController < ApplicationController

		# Security & Action Filters
		before_action :set_paper_trail_whodunnit
		before_action :set_directory_category, only: [:show]

		# INDEX - Directory Category/Listings
		def index
			@directory_categorylistings = Directory::Categorylisting.all
		end

		# DETAILED - Directory Category/Listings
		def show
		end

	end
end