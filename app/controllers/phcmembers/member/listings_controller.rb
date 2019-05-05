require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::ListingsController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :phcmembers_get_member_profile_info
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_member_listing, only: [:show, :edit, :update, :destroy]

    # INDEX - Directory Listings
    def index
      profile = Member::Profile.find(params[:profile_id])
      @member_listings = profile.listings.where(org_id: current_user.org_id)
    end

    # LISTINGS DETAILS - Directory Listings
    def show
      profile = Member::Profile.find(params[:profile_id])
      @meber_listing = profile.listings.find(params[:id])
      @member_listing_versions = Phcmembers::ListingVersions.where(item_id: @member_listing, item_type: 'Phcmembers::Member::Listing')
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
      @member_listing.user_id = current_user.id
      @member_listing.org_id = current_user.org_id
      if @member_listing.save
        redirect_to member_profile_listings_url, notice: 'Listing was successfully created.'
      else
          render :new
      end
    end

    # PATCH/PUT - Directory Listings
    def update
      @profile = Member::Profile.find(params[:profile_id])
      if @member_listing.update(member_listing_params)
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
      params.require(:member_listing).permit(:listing_companyname, :listing_contactname, :listing_addressl1, :listing_addressl2, :listing_city, :listing_country, :listing_province, :listing_postalcode, :listing_phone, :listing_contactemail, :listing_website, :profile_id, :slug, :user_id, :org_id, category_ids: [])
    end

  end
end
