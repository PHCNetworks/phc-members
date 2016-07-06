require_dependency "phcmemberspro/application_controller"

module Phcmemberspro
	class Directory::ListingsController < ApplicationController

		# Filters
		before_action :set_paper_trail_whodunnit
		before_action :directory_category_information
		before_action :set_directory_listing, only: [:show, :update, :destroy]
		# layout 'layouts/phcmemberspro/directory/directory_all.html.erb'

		# Directory Listing Index
		def index
			category = Directory::Category.find(params[:category_id])
			@directory_listings = category.listings
		end

		# Show Directory Listing
		def show
			@versions = PaperTrail::Version.where(item_id: params[:id], item_type: 'Phcmembers::Directory::Listing')
			category = Directory::Category.find(params[:category_id])
			@directory_listing = category.listings.find(params[:id])
		end

		# New Directory Listing
		def new
			category = Directory::Category.find(params[:category_id])
			@directory_listing = category.listings.build
		end

		# Create Directory Listing Action
		def create
			@category = Directory::Category.find(params[:category_id])
			@directory_listing = @category.listings.create(directory_listing_params)
			if @directory_listing.save
				redirect_to directory_category_listings_path, notice: 'Listing was successfully created.'
				else
					render :new
			end
		end

		# Update Directory Listing Action
		def update
			if @directory_listing.update(directory_listing_params)
				redirect_to directory_category_listings_path, notice: 'Listing was successfully updated.'
				else
					render :edit
			end
		end

		# Delete Directory Listing
		def destroy
			@category = Directory::Category.find(params[:category_id])
			@directory_listing = @category.listings.find(params[:id])
			@directory_listing.destroy
		  redirect_to directory_category_listings_path, notice: 'Listing was successfully destroyed.'
		end

		private
		
		# Directory Category Information
		def directory_category_information  
			@directory_category = Directory::Category.find(params[:category_id])
		end
		
		# Common Callbacks
		def set_directory_listing
			@directory_listing = Directory::Listing.find(params[:id])
		end

		# Whitelists
		def directory_listing_params
			params.require(:directory_listing).permit(:business_id, :category_id, :main_id, :user_id, :membership_id, :oganization_id)
		end

	end
end