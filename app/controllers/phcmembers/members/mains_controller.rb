require_dependency "phcmembers/application_controller"

module Phcmembers
	class Members::MainsController < ApplicationController

		# Filters
		before_action :set_paper_trail_whodunnit
		before_action :set_members_main, only: [:show, :edit, :update, :destroy]
		# layout :phcmemberspro_membersmain_layouts_resolver

		# Member Profile List
		def index
			@members_mains = Members::Main.all
		end

		# Detailed Member Profile
		def show
			@versions = PaperTrail::Version.where(item_id: params[:id], item_type: 'Phcmembers::Members::Main')
			@members_listings = Directory::Listing.where(main_id: params[:id])
			@members_main = Members::Main.find(params[:id])
		end

		# New Member Profile
		def new
			@members_main = Members::Main.new
		end

		# Edit Member Profile
		def edit
		end

		# Create Member Profile Action
		def create
			@members_main = Members::Main.new(members_main_params)
			if @members_main.save
				redirect_to members_mains_path, notice: 'Member profile has been successfully created.'
				else
					render :new
			end
		end

		# Update Member Profile Action
		def update
			if @members_main.update(members_main_params)
				redirect_to members_mains_path, notice: 'Member profile has been successfully updated.'
				else
					render :edit
			end
		end

		# Delete Member Profile Action
		def destroy
			@members_main.destroy
			redirect_to members_mains_path, notice: 'Member profile and all businesses was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_members_main
			@members_main = Members::Main.find(params[:id])
		end

		# White List
		def members_main_params
			params.require(:members_main).permit(:mfirstname, :mlastname, :mtitle, :memail, :mphone, :mnotes, :smfacebook, :smtwitter, :smlinkedin, :user_id, :membership_id, :oganization_id)
		end

	end
end
