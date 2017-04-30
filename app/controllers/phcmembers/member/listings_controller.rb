require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::ListingsController < ApplicationController

    # Security & Action Filters
    before_action :set_paper_trail_whodunnit
    before_action :get_member_profile_info
    before_action :set_member_listing, only: [:show, :edit, :update, :destroy]

    # INDEX - Directory Listings
    def index
      profile = Member::Profile.find(params[:profile_id])
      @member_listings = profile.listings
    end

    # LISTINGS DETAILS - Directory Listings
    def show
      profile = Member::Profile.find(params[:profile_id])
      @meber_listing = profile.listings.find(params[:id])
      @versions = PaperTrail::Version.where(item_id: params[:id], item_type: 'Phcmembers::Member::Listing')
    end

    # NEW - Directory Listings
    def new
      profile = Member::Profile.find(params[:profile_id])
      @member_listing = profile.listings.build
    end

    # EDIT - Directory Listings
    def edit
    end

    # POST - Directory Listings
    def create
      @profile = Member::Profile.find(params[:profile_id])
      @member_listing = @profile.listings.create(member_listing_params)
      if @member_listing.save
        @member_listing.categorylistings.build
        redirect_to member_profile_listings_url, notice: 'Listing was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT - Directory Listings
    def update
      if @member_listing.update(member_listing_params)
        @member_listing.categorylistings.build
        redirect_to member_profile_listings_url, notice: 'Listing was successfully updated.'
        else
          render :edit
      end
    end

    # DELETE - Directory Listings
    def destroy
      @profile = Member::Profile.find(params[:profile_id])
      @member_listing = @profile.listings.find(params[:id])
      @member_listing.destroy
      redirect_to member_profile_listings_url, notice: 'Listing was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_member_listing
      @member_listing = Member::Listing.find(params[:id])
    end

    # Whitelist
    def member_listing_params
      params.require(:member_listing).permit(:mbcompanyname, :mbcontactname, :mbaddressl1, :mbaddressl2, :mbcity, :mbcountry, :mbprovince, :mbpostalcode, :mbphone, :mbcontactemail, :mbwebsite, :profile_id, category_ids: [])
    end

  end
end
