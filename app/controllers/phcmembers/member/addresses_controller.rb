require_dependency "phcmembers/application_controller"

module Phcmembers
	class Member::AddressesController < ApplicationController

		# Security & Filters
		before_action :set_paper_trail_whodunnit
		before_action :phc_member_mains_info
		before_action :set_member_address, only: [:show, :edit, :update, :destroy]
		layout 'layouts/phcmemberspro/members/members_all.html.erb'

		# INDEX - Member Address
		def index
			@member_addresses = Member::Address.all
		end

		# ADDRESS DETAILS - Member Address
		def show
		end

		# NEW - Member Address
		def new
		@member_address = Member::Address.new
		end

		# GET - Member Address
		def edit
		end

		# POST - Member Address
		def create
			@member_address = Member::Address.new(member_address_params)

			if @member_address.save
				redirect_to @member_address, notice: 'Address was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT - Member Address
		def update
			if @member_address.update(member_address_params)
			redirect_to @member_address, notice: 'Address was successfully updated.'
				else
				render :edit
			end
		end

		# DELETE - Member Address
		def destroy
			@member_address.destroy
			redirect_to member_addresses_url, notice: 'Address was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_member_address
			@member_address = Member::Address.find(params[:id])
		end

		# Whitelist
		def member_address_params
			params.require(:member_address).permit(:mcaddressl1, :mcaddressl2, :mccity, :mcprovince, :mccountry, :mcpostalcode, :mctype, :main_id)
		end

	end
end
