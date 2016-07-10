require_dependency "phcmembers/application_controller"

module Phcmembers
	class Members::BusinessesController < ApplicationController

		# Filters
		before_action :set_paper_trail_whodunnit
		before_action :phc_member_mains_info
		before_action :set_members_business, only: [:edit, :update, :destroy]
		# layout 'layouts/phcmembers/members/members_all.html.erb'

		# Member Members Business Information Index
		def index
			main = Members::Main.find(params[:main_id])
			@members_businesses = main.businesses.order('mbcompanyname ASC')
		end

		# Detailed Member Contact Information
		def show
			@versions = PaperTrail::Version.where(item_id: params[:id], item_type: 'Phcmembers::Members::Business')
			main = Members::Main.find(params[:main_id])
			@members_businesses = main.businesses.find(params[:id])
		end

		# New Member Members Business Information
		def new
			main = Members::Main.find(params[:main_id])
			@members_business = main.businesses.build
		end

		# Edit Member Members Business Information
		def edit
			main = Members::Main.find(params[:main_id])
			@members_business = main.businesses.find(params[:id])
		end

		# Create Action
		def create
			@main = Members::Main.find(params[:main_id])
			@members_business = @main.businesses.create(members_business_params)
			if @members_business.save
				redirect_to members_main_businesses_path, notice: 'Members Business was successfully created.'
				else
					render :new
			end
		end

		# Update Action
		def update
			if @members_business.update(members_business_params)
				redirect_to members_main_businesses_path, notice: 'Members Business Information was successfully updated.'
				else
					render :edit
			end
		end

		# Delete Action
		def destroy
			@main = Members::Main.find(params[:main_id])
			@members_business = @main.businesses.find(params[:id])
			@members_business.destroy
				redirect_to members_main_businesses_path, notice: 'Members Business has been Deleted.'
		end

		private
		
		# Grab Member Information
		def phc_member_mains_info  
			@members_main = Members::Main.find(params[:main_id])
		end

		# Common Callbacks
		def set_members_business
			@members_business = Members::Business.find(params[:id])
		end

		# White List
		def members_business_params
			params.require(:members_business).permit(:mbcompanyname, :mbcontactname, :mbaddressl1, :mbaddressl2, :mbcity, :mbcountry, :mbprovince, :mbpostalcode, :mbphone, :mbcontactemail, :mbwebsite, :main_id)
		end

	end
end
