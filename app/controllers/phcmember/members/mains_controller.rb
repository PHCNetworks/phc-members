require_dependency "phcmembers/application_controller"

module Phcmembers
	class Members::MainsController < ApplicationController
	
		# Security & Action Filters
		# before_filter :authenticate_user!
		layout 'layouts/phcmembers/members/members_all.html.erb'
		before_action :set_members_main, only: [:show, :edit, :update, :destroy]

		# Member Profile List
		def index
			@members_mains = Members::Main.all
		end

		# Detailed Member Profile
		def show
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
				redirect_to members_mains_path, notice: 'Member profile was successfully created.'
				else
					render :new
			end
		end

		# Update Member Profile Action
		def update
			if @members_main.update(members_main_params)
				redirect_to members_mains_path, notice: 'Member profile was successfully updated.'
				else
					render :edit
			end
		end

		# Delete Member Profile Action
		def destroy
			@members_main.destroy
			redirect_to members_mains_path, notice: 'Member profile was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_members_main
			@members_main = Members::Main.find(params[:id])
		end

		# White List
		def members_main_params
			params.require(:members_main).permit(:mfirstname, :mlastname, :mtitle, :memail, :mphone, :mnotes, :account_id)
		end

	end
end
