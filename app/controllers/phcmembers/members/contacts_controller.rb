require_dependency "phcmemberspro/application_controller"

module Phcmemberspro
	class Members::ContactsController < ApplicationController

		# Security & Action Filters
		before_action :set_paper_trail_whodunnit
		before_action :phc_member_mains_info
		before_action :set_members_contact, only: [:show, :edit, :update, :destroy]
		# layout 'layouts/phcmemberspro/members/members_all.html.erb'

		# Member Contact Index
		def index
			main = Members::Main.find(params[:main_id])
			@members_contacts = main.contacts.order('mcprovince ASC')
		end

		# Detailed Member Contact Information
		def show
			@versions = PaperTrail::Version.where(item_id: params[:id], item_type: 'Phcmembers::Members::Contact')
			main = Members::Main.find(params[:main_id])
			@members_contact = main.contacts.find(params[:id])
		end

		# New Contact
		def new
			main = Members::Main.find(params[:main_id])
			@members_contact = main.contacts.build
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
				redirect_to members_main_contacts_path, notice: 'Member contact was successfully created.'
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
			redirect_to members_main_contacts_path, notice: 'Member contact was successfully destroyed.'
		end

		private

		# Get Main Member Info
		def phc_member_mains_info  
			@members_main = Members::Main.find(params[:main_id])
		end

		# Common Callbacks
		def set_members_contact
			@members_contact = Members::Contact.find(params[:id])
		end

		# White List
		def members_contact_params
			params.require(:members_contact).permit(:mcaddressl1, :mcaddressl2, :mccity, :mcprovince, :mccountry, :mcpostalcode, :mctype, :main_id, :user_id, :membership_id, :oganization_id)
		end

	end
end
