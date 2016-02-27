require_dependency "phcmember/application_controller"

module Phcmember
	class Members::ContactsController < ApplicationController

		# Security & Action Filters
		before_filter :authenticate_user!
		layout 'layouts/phcmember/members/members_all.html.erb'
		before_action :set_members_contact, only: [:show, :edit, :update, :destroy]

		# Add Member Contact Information 
		before_action :phc_member_mains_info

		def phc_member_mains_info  
			@main = Members::Main.scoped_to(current_account).find(params[:main_id])
		end

		# Member Contact Index
		def index
			main = Members::Main.find(params[:main_id])
			@members_contact = main.contacts.scoped_to(current_account).order('mccompanyname ASC')
		end

		# Detailed Member Contact Information
		def show
			main = Members::Main.find(params[:main_id])
			@members_contact = main.contacts.scoped_to(current_account).find(params[:id])
		end

		# New Contact
		def new
			main = Members::Main.find(params[:main_id])
			@members_contact = main.contacts.scoped_to(current_account).build
			respond_to do |format|
				format.html # new.html.erb
				format.xml  { render :xml => @members_contact }
			end
		end

		# Edit Contact
		def edit
			main = Members::Main.find(params[:main_id])
			@members_contact = main.contacts.scoped_to(current_account).find(params[:id])
		end

		# Create Action
		def create
			@main = Members::Main.find(params[:main_id])
			@members_contact = @main.contacts.scoped_to(current_account).create(members_contact_params)
			if @members_contact.save
				redirect_to @members_contact, notice: 'Contact was successfully created.'
				else
					render :new
			end
		end

		# Update Action
		def update
			if @members_contact.update(members_contact_params)
				redirect_to @members_contact, notice: 'Contact was successfully updated.'
				else
					render :edit
			end
		end

		# Delete Action
		def destroy
			@main = Members::Main.find(params[:main_id])
			@members_contact = @main.contacts.find(params[:id])
			@members_contact.destroy
			redirect_to members_contacts_url, notice: 'Contact was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_members_contact
			@members_contact = Members::Contact.find(params[:id])
		end

		# White List
		def members_contact_params
			params.require(:members_contact).permit(:mccontactname, :mccompanyname, :mcaddressl1, :mcaddressl2, :mccity, :mlprovince, :mccountry, :mcpostalcode, :mcphone, :mlwebsite, :mlemail, :main_id, :account_id)
		end

	end
end
