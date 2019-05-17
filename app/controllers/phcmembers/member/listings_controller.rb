require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::ListingsController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsHelper
    before_action :phcmembers_get_member_profile_info
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_member_listing, only: [:show, :edit, :update, :destroy]

    # INDEX
    def index
      profile = Member::Profile.find(params[:profile_id])
      @member_listings = profile.listings.all
    end

    # SHOW
    def show
      profile = Member::Profile.find(params[:profile_id])
      @meber_listing = profile.listings.find(params[:id])
      @member_listing_versions = Phcmembers::ListingVersions.where(item_id: @member_listing, item_type: 'Phcmembers::Member::Listing')
    end

    # NEW
    def new
      profile = Member::Profile.find(params[:profile_id])
      @member_listing = profile.listings.build
    end

    # EDIT
    def edit
    end

    # CREATE
    def create
      @profile = Member::Profile.find(params[:profile_id])
      @member_listing = @profile.listings.create(member_listing_params)
      @member_listing.user_id = current_user.id
      if @member_listing.save
        redirect_to member_profile_listings_url, :flash => { :success => 'Listing was successfully created.' }
      else
        render :new
      end
    end

    # UPDATE
    def update
      @profile = Member::Profile.find(params[:profile_id])
      if @member_listing.update(member_listing_params)
        redirect_to member_profile_listings_url, :flash => { :success => 'Listing was successfully updated.' }
      else
        render :edit
      end
    end

    # DELETE
    def destroy
      @profile = Member::Profile.find(params[:profile_id])
      @member_listing = @profile.listings.find(params[:id])
      @member_listing.destroy
      redirect_to member_profile_listings_url, :flash => { :error => 'Listing was successfully destroyed.' }
    end

    private

    # Common Callbacks
    def set_member_listing
      @member_listing = Member::Listing.find(params[:id])
    end

    # Whitelist
    def member_listing_params
      params.require(:member_listing).permit(:listing_company_name, :listing_contact_name, :listing_address_line_1, :listing_address_line_2, :listing_city, :listing_country, :listing_province, :listing_postal_code, :listing_phone, :listing_contact_email, :listing_website, :profile_id, :slug, :user_id, category_ids: [])
    end

  end
end
