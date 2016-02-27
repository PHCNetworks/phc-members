require_dependency "phcmember/application_controller"

module Phcmember
	class Members::ListingsController < ApplicationController

		# Security & Action Filters
		before_filter :authenticate_user!
		layout 'layouts/phcmember/members/members_all.html.erb'
		before_action :set_members_listing, only: [:show, :edit, :update, :destroy]

		# Add Member Contact Information 
		before_action :phc_member_mains_info

		def phc_member_mains_info  
			@membercontact = Members::Main.scoped_to(current_account).find(params[:main_id])
		end

		# Member Listing Index
		def index
			main = Members::Main.find(params[:main_id])
			@members_listings = main.listings.scoped_to(current_account).order('mlcontactname ASC')
		end

		# Detailed Member Listing
		def show
			main = Members::Main.find(params[:main_id])
			@members_listing = main.listings.scoped_to(current_account).find(params[:id])
		end

		# New Member Listing
		def new
			main = Members::Main.find(params[:main_id])
			@members_listing = main.listings.scoped_to(current_account).build
			respond_to do |format|
				format.html # new.html.erb
				format.xml  { render :xml => @membercontact }
			end
		end

		# Edit Member Listing
		def edit
			main = Members::Main.find(params[:main_id])
			@members_listing = main.listings.scoped_to(current_account).find(params[:id])
		end

		# Create Action
		def create
			@main = Members::Main.find(params[:main_id])
			@members_listing = @main.memberlistings.scoped_to(current_account).create(members_listing_params)
			if @members_listing.save
				redirect_to @members_listing, notice: 'Listing was successfully created.'
				else
					render :new
			end
		end

		# Update Action
		def update
			if @members_listing.update(members_listing_params)
				redirect_to @members_listing, notice: 'Listing was successfully updated.'
				else
					render :edit
			end
		end

		# Delete Action
		def destroy
			@main = Members::Main.find(params[:main_id])
			@members_listing = @main.memberlistings.find(params[:id])
			@members_listing.destroy
			redirect_to members_listings_url, notice: 'Listing was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_members_listing
			@members_listing = Members::Listing.find(params[:id])
		end

		# White List
		def members_listing_params
			params.require(:members_listing).permit(:mlcontactname, :mlcompanyname, :mladdressl1, :mladdressl2, :mlcity, :mlprovince, :mlcountry, :mlpostalcode, :mlphone, :mlwebsite, :mlemail, :main_id, :account_id)
		end

	end
end
