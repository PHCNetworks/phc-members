require_dependency "phcmember/application_controller"

module Phcmember
	class Members::MainsController < ApplicationController
	
	# Security & Action Filters
	before_filter :authenticate_user!
	layout '/backend/application.html.erb'
	before_action :set_members_main, only: [:show, :edit, :update, :destroy]

	# Member Profile List
	def index
		@members_mains = Members::Main.scoped_to(current_account).order('mcfirstname ASC')
	end

	# Detailed Member Profile
	def show
		@members_main = Members::Main.scoped_to(current_account).find(params[:id])
	end

	# New Member Profile
	def new
		@members_main = Members::Main.scoped_to(current_account).new
	end

	# Edit Member Profile
	def edit
	end

	# Create Member Profile Action
	def create
		@members_main = Members::Main.scoped_to(current_account).new(members_main_params)

		if @members_main.save
			redirect_to @members_main, notice: 'Member profile was successfully created.'
			else
				render :new
		end
	end

	# Update Member Profile Action
	def update
		if @members_main.scoped_to(current_account).update(members_main_params)
			redirect_to @members_main, notice: 'Member profile was successfully updated.'
			else
				render :edit
		end
	end

	# Delete Member Profile Action
	def destroy
		@members_main.scoped_to(current_account).destroy
		redirect_to members_mains_url, notice: 'Member profile was successfully destroyed.'
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
