require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::AddressesController < ApplicationController

    # Security & Action Filters
    before_action :set_paper_trail_whodunnit
    before_action :get_member_profile_info
    before_action :set_member_address, only: [:show, :edit, :update, :destroy]

    # INDEX - Directory Listings
    def index
      profile = Member::Profile.find(params[:profile_id])
      @member_addresses = profile.addresses
    end

    # LISTINGS DETAILS - Directory Listings
    def show
      profile = Member::Profile.find(params[:profile_id])
      @member_address = profile.addresses.find(params[:id])
      @versions = PaperTrail::Version.where(item_id: params[:id], item_type: 'Phcmembers::Member::Address')
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
      if @member_address.save
        redirect_to member_profile_addresses_url, notice: 'Listing was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT - Directory Listings
    def update
      if @member_address.update(member_address_params)
        redirect_to member_profile_addresses_url, notice: 'Listing was successfully updated.'
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
      params.require(:member_address).permit(:mcaddressl1, :mcaddressl2, :mccity, :mcprovince, :mccountry, :mcpostalcode, :mctype, :profile_id)
    end

  end
end
