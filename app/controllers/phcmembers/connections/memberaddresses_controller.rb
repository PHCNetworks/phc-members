require_dependency "phcmembers/application_controller"

module Phcmembers
	class Connections::MemberaddressesController < ApplicationController

		# Security & Action Filters
		before_action :set_paper_trail_whodunnit
		before_action :set_connections_memberaddress, only: [:show, :edit, :update, :destroy]

		# INDEX - Member/Address Connection
		def index
			@connections_memberaddresses = Connections::Memberaddress.all
		end

		# DETAILED - Member/Address Connection
		def show
		end

		# NEW - Member/Address Connection
		def new
			@connections_memberaddress = Connections::Memberaddress.new
		end

		# EDIT - Member/Address Connection
		def edit
		end

		# POST - Member/Address Connection
		def create
			@connections_memberaddress = Connections::Memberaddress.new(connections_memberaddress_params)
			if @connections_memberaddress.save
				redirect_to connections_memberaddresses_url, notice: 'Memberaddress was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT - Member/Address Connection
		def update
			if @connections_memberaddress.update(connections_memberaddress_params)
				redirect_to connections_memberaddresses_url, notice: 'Memberaddress was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE - Member/Address Connection
		def destroy
			@connections_memberaddress.destroy
			redirect_to connections_memberaddresses_url, notice: 'Memberaddress was successfully destroyed.'
		end

		private
		
		# Callbacks
		def set_connections_memberaddress
			@connections_memberaddress = Connections::Memberaddress.find(params[:id])
		end

		# Whitelist
		def connections_memberaddress_params
			params.require(:connections_memberaddress).permit(:profile_id, :listing_id)
		end

	end
end
