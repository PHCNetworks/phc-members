require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::AddressesController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsHelper
    before_action :phcmembers_get_member_profile_info
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_member_address, only: [:show, :edit, :update, :destroy]

    # INDEX - Directory Listings
    def index
      profile = Member::Profile.find(params[:profile_id])
      @member_addresses = profile.addresses.where(org_id: current_user.org_id)
    end

    # LISTINGS DETAILS - Directory Listings
    def show
      profile = Member::Profile.find(params[:profile_id])
      @member_address = profile.addresses.find(params[:id])
      @member_address_versions = Phcmembers::AddressVersions.where(item_id: @member_address, item_type: 'Phcmembers::Member::Address')
    end

    # NEW - Directory Listings
    def new
      profile = Member::Profile.find(params[:profile_id])
      @member_address = profile.addresses.build
    end

    # EDIT - Directory Listings
    def edit
    end

    # POST - Directory Listings
    def create
      @profile = Member::Profile.find(params[:profile_id])
      @member_address = @profile.addresses.create(member_address_params)
      @member_address.user_id = current_user.id
      @member_address.org_id = current_user.org_id
      if @member_address.save
        redirect_to member_profile_addresses_url, notice: 'Address was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT - Directory Listings
    def update
      @profile = Member::Profile.find(params[:profile_id])
      if @member_address.update(member_address_params)
        redirect_to member_profile_addresses_url, notice: 'Address was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE - Directory Listings
    def destroy
      @profile = Member::Profile.find(params[:profile_id])
      @member_address = @profile.addresses.find(params[:id])
      @member_address.destroy
      redirect_to member_profile_addresses_url, notice: 'Listing was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_member_address
      @member_address = Member::Address.find(params[:id])
    end

    # Whitelist
    def member_address_params
      params.require(:member_address).permit(:address_addressl1, :address_addressl2, :address_city, :address_province, :address_country, :address_postalcode, :address_type, :user_name, :profile_id, :slug, :user_id, :org_id)
    end

  end
end
