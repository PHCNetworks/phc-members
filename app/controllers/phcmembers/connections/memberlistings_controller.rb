require_dependency "phcmembers/application_controller"

module Phcmembers
	class Connections::MemberlistingsController < ApplicationController

		# Security & Filters
		before_action :set_connections_memberlisting, only: [:show, :edit, :update, :destroy]

		# INDEX - Member/Listing Connection
		def index
			@connections_memberlistings = Connections::Memberlisting.all
		end

		# DETAILED - Member/Listing Connection
		def show
		end

		# NEW - Member/Listing Connection
		def new
		@connections_memberlisting = Connections::Memberlisting.new
		end

		# EDIT - Member/Listing Connection
		def edit
		end

		# POST - Member/Listing Connection
		def create
			@connections_memberlisting = Connections::Memberlisting.new(connections_memberlisting_params)
			if @connections_memberlisting.save
				redirect_to @connections_memberlisting, notice: 'Memberlisting was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT - Member/Listing Connection
		def update
			if @connections_memberlisting.update(connections_memberlisting_params)
				redirect_to @connections_memberlisting, notice: 'Memberlisting was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE /connections/memberlistings/1
		def destroy
			@connections_memberlisting.destroy
			redirect_to connections_memberlistings_url, notice: 'Memberlisting was successfully destroyed.'
		end

		private

		# Callbacks
		def set_connections_memberlisting
			@connections_memberlisting = Connections::Memberlisting.find(params[:id])
		end

		# Whitelist
		def connections_memberlisting_params
			params.require(:connections_memberlisting).permit(:profile_id, :listing_id)
		end

	end
end
