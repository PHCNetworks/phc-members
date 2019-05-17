require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::AddressesController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsHelper
    before_action :phcmembers_get_member_profile_info
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_member_address, only: [:show, :edit, :update, :destroy]

    # INDEX
    def index
      profile = Member::Profile.find(params[:profile_id])
      @member_addresses = profile.addresses.all
    end

    # SHOW
    def show
      profile = Member::Profile.find(params[:profile_id])
      @member_address = profile.addresses.find(params[:id])
      @member_address_versions = Phcmembers::AddressVersions.where(item_id: @member_address, item_type: 'Phcmembers::Member::Address')
    end

    # NEW
    def new
      profile = Member::Profile.find(params[:profile_id])
      @member_address = profile.addresses.build
    end

    # EDIT
    def edit
    end

    # CREATE
    def create
      @profile = Member::Profile.find(params[:profile_id])
      @member_address = @profile.addresses.create(member_address_params)
      @member_address.user_id = current_user.id
      if @member_address.save
        redirect_to member_profile_addresses_url, :flash => { :success => 'Address was successfully created.' }
      else
        render :new
      end
    end

    # UPDATE
    def update
      @profile = Member::Profile.find(params[:profile_id])
      if @member_address.update(member_address_params)
        redirect_to member_profile_addresses_url, :flash => { :success => 'Address was successfully updated.' }
      else
        render :edit
      end
    end

    # DELETE
    def destroy
      @profile = Member::Profile.find(params[:profile_id])
      @member_address = @profile.addresses.find(params[:id])
      @member_address.destroy
      redirect_to member_profile_addresses_url, :flash => { :error => 'Listing was successfully destroyed.' }
    end

    private

    # Common Callbacks
    def set_member_address
      @member_address = Member::Address.find(params[:id])
    end

    # Whitelist
    def member_address_params
      params.require(:member_address).permit(:address_address_line_1, :address_address_line_2, :address_city, :address_province, :address_country, :address_postal_code, :address_type, :user_name, :profile_id, :slug, :user_id)
    end

  end
end
