require_dependency "phcmembers/application_controller"

module Phcmembers
	class Connections::CategorylistingsController < ApplicationController

		# Security & Action Filters
		before_action :set_paper_trail_whodunnit
		before_action :set_connections_categorylisting, only: [:show, :edit, :update, :destroy]

		# INDEX - Category/Listing Connection
		def index
			@connections_categorylistings = Connections::Categorylisting.all
		end

		# DETAILED CATEGORY VIEW - Category/Listing Connection
		def show
		end

		# NEW - Category/Listing Connection
		def new
			@connections_categorylisting = Connections::Categorylisting.new
		end

		# EDIT - Category/Listing Connection
		def edit
		end

		# POST - Category/Listing Connection
		def create
			@connections_categorylisting = Connections::Categorylisting.new(connections_categorylisting_params)
			if @connections_categorylisting.save
				redirect_to connections_memberaddresses_url, notice: 'Categorylisting was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT - Category/Listing Connection
		def update
			if @connections_categorylisting.update(connections_categorylisting_params)
				redirect_to connections_memberaddresses_url, notice: 'Categorylisting was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE - Category/Listing Connection
		def destroy
			@connections_categorylisting.destroy
			redirect_to connections_categorylistings_url, notice: 'Categorylisting was successfully destroyed.'
		end

		private

		# Callbacks
		def set_connections_categorylisting
			@connections_categorylisting = Connections::Categorylisting.find(params[:id])
		end

		# Whitelist
		def connections_categorylisting_params
			params.require(:connections_categorylisting).permit(:category_id, :listing_id)
		end

	end
end
