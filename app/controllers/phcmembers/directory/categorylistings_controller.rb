require_dependency "phcmembers/application_controller"

module Phcmembers
	class Directory::CategorylistingsController < ApplicationController

		# Security & Action Filters
		before_action :set_paper_trail_whodunnit
		before_action :set_directory_category, only: [:show, :destroy]

		# INDEX - Directory Category/Listings
		def index
			@directory_categorylistings = Directory::Categorylisting.all
		end

		# DETAILED - Directory Category/Listings
		def show
			@directory_listing = Directory::Listing.find(params[:id])
			@versions = PaperTrail::Version.where(item_id: params[:id], item_type: 'Phcmembers::Directory::Listing')
		end

		# DELETE - Directory Category
		def destroy
			@directory_categorylisting.destroy
			redirect_to directory_categorylistings_url, notice: 'Listing was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_directory_categorylisting
			@directory_categorylisting = Directory::Categorylisting.find(params[:id])
		end

		# Whitelist
		def directory_categorylisting_params
			params.require(:directory_categorylisting).permit(:category_id, :listing_id)
		end

	end
end
