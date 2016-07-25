require_dependency "phcmembers/application_controller"

module Phcmembers
	class Directory::ListingsController < ApplicationController

		# Security & Action Filters
		before_action :require_user
		before_action :set_paper_trail_whodunnit
		before_action :set_directory_listing, only: [:show, :edit, :update, :destroy]
		layout 'layouts/phcmemberspro/directory/directory_all.html.erb'

		# INDEX - Directory Listings
		def index
			@directory_listings = Directory::Listing.all
		end

		# LISTINGS DETAILS - Directory Listings
		def show
		end

		# NEW - Directory Listings
		def new
			@directory_listing = Directory::Listing.new
		end

		# EDIT - Directory Listings
		def edit
		end

		# POST - Directory Listings
		def create
			@directory_listing = Directory::Listing.new(directory_listing_params)
			if @directory_listing.save
				redirect_to @directory_listing, notice: 'Listing was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT - Directory Listings
		def update
			if @directory_listing.update(directory_listing_params)
				redirect_to @directory_listing, notice: 'Listing was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE - Directory Listings
		def destroy
			@directory_listing.destroy
			redirect_to directory_listings_url, notice: 'Listing was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_directory_listing
			@directory_listing = Directory::Listing.find(params[:id])
		end

		# Whitelist
		def directory_listing_params
			params.require(:member_listing).permit(:mbcompanyname, :mbcontactname, :mbaddressl1, :mbaddressl2, :mbcity, :mbcountry, :mbprovince, :mbpostalcode, :mbphone, :mbcontactemail, :mbwebsite)
		end

	end
end
