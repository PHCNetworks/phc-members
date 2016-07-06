require_dependency "phcmembers/application_controller"

module Phcmembers
  class Directory::ListingsController < ApplicationController
    before_action :set_directory_listing, only: [:show, :edit, :update, :destroy]

    # GET /directory/listings
    def index
      @directory_listings = Directory::Listing.all
    end

    # GET /directory/listings/1
    def show
    end

    # GET /directory/listings/new
    def new
      @directory_listing = Directory::Listing.new
    end

    # GET /directory/listings/1/edit
    def edit
    end

    # POST /directory/listings
    def create
      @directory_listing = Directory::Listing.new(directory_listing_params)

      if @directory_listing.save
        redirect_to @directory_listing, notice: 'Listing was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /directory/listings/1
    def update
      if @directory_listing.update(directory_listing_params)
        redirect_to @directory_listing, notice: 'Listing was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /directory/listings/1
    def destroy
      @directory_listing.destroy
      redirect_to directory_listings_url, notice: 'Listing was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_directory_listing
        @directory_listing = Directory::Listing.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def directory_listing_params
        params.fetch(:directory_listing, {})
      end
  end
end
