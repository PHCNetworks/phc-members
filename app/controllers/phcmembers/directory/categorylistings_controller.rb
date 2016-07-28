require_dependency "phcmembers/application_controller"

module Phcmembers
	class Directory::CategorylistingsController < ApplicationController

		# Security & Action Filters
		before_action :set_paper_trail_whodunnit
		before_action :set_directory_category, only: [:show, :edit, :update, :destroy]

		# INDEX - Directory Category/Listings
		def index
			@directory_categorylistings = Directory::Categorylisting.all
		end

		# DETAILED - Directory Category/Listings
		def show
		end

		# NEW - Directory Category/Listings
		def new
			@directory_categorylisting = Directory::Categorylisting.new
		end

		# EDIT - Directory Category/Listings
		def edit
		end

		# POST - Directory Category
		def create
			@directory_categorylisting = Directory::Categorylisting.new(directory_categorylisting_params)
			if @directory_categorylisting.save
				redirect_to @directory_categorylisting, notice: 'Listing was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT - Directory Category
		def update
			if @directory_categorylisting.update(directory_categorylisting_params)
				redirect_to @directory_categorylisting, notice: 'Listing was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE - Directory Category
		def destroy
			@directory_categorylisting.destroy
			redirect_to directory_categorylistings_url, notice: 'Listing was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_directory_categorylisting
			@directory_categorylisting = Directory::Categorylisting.find(params[:id])
		end

		# Whitelist
		def directory_categorylisting_params
			params.require(:directory_categorylisting).permit(:category_id, :listing_id)
		end

	end
end
