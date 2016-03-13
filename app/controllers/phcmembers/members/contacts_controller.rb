require_dependency "phcmembers/application_controller"

module Phcmembers
	class Members::ContactsController < ApplicationController

		# Filters
		layout 'layouts/phcmembers/members/members_all.html.erb'
		before_action :authenticate_user!
		before_action :set_members_contact, only: [:show, :edit, :update, :destroy]

		# Add Member Contact Information 
		before_action :phc_member_mains_info

		def phc_member_mains_info  
			@main = Members::Main.find(params[:main_id])
		end

		# Member Contact Index
		def index
			main = Members::Main.find(params[:main_id])
			@members_contact = main.contacts
		end

		# Detailed Member Contact Information
		def show
			main = Members::Main.find(params[:main_id])
			@members_contact = main.contacts.find(params[:id])
		end

		# New Contact
		def new
			main = Members::Main.find(params[:main_id])
			@members_contact = main.contacts.build
			respond_to do |format|
				format.html # new.html.erb
				format.xml  { render :xml => @members_contact }
			end
		end

		# Edit Contact
		def edit
			main = Members::Main.find(params[:main_id])
			@members_contact = main.contacts.find(params[:id])
		end

		# Create Action
		def create
			@main = Members::Main.find(params[:main_id])
			@members_contact = @main.contacts.create(members_contact_params)
			if @members_contact.save
				redirect_to members_main_contacts_path, notice: 'Member contact information was successfully created.'
				else
					render :new
			end
		end

		# Update Action
		def update
			if @members_contact.update(members_contact_params)
				redirect_to members_main_contacts_path, notice: 'Member contact information was successfully updated.'
				else
					render :edit
			end
		end

		# Delete Action
		def destroy
			@main = Members::Main.find(params[:main_id])
			@members_contact = @main.contacts.find(params[:id])
			@members_contact.destroy
			redirect_to members_main_contacts_path, notice: 'Member contact information was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_members_contact
			@members_contact = Members::Contact.find(params[:id])
		end

		# White List
		def members_contact_params
			params.require(:members_contact).permit(:mccontactname, :mccompanyname, :mcaddressl1, :mcaddressl2, :mccity, :mcprovince, :mccountry, :mcpostalcode, :mcphone, :mcwebsite, :mcemail, :main_id)
		end

	end
end
