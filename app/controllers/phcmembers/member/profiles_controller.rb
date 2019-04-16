require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::ProfilesController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_member_profile, only: [:show, :edit, :update, :destroy]
    layout "phcmembers/application_full_width", :only => [ :show ]

    # INDEX - Member Profile
    def index
      @member_profiles = Phcmembers::Member::Profile.all
    end

    # DETAILED PROFILE - Member Profile
    def show
      @member_profile = Phcmembers::Member::Profile.find(params[:id])
      @member_profile_versions = Phcmembers::ProfileVersions.where(item_id: @member_profile, item_type: 'Phcmembers::Member::Profile')
    end

    # NEW FORM - Member Profile
    def new
      @member_profile = Phcmembers::Member::Profile.new
    end

    # EDIT FORM - Member Profile
    def edit
    end

    # POST - Member Profile
    def create
      @member_profile = Phcmembers::Member::Profile.new(member_profile_params)
      if @member_profile.save
        redirect_to member_profiles_url, notice: 'Member Profile was Successfully Created.'
      else
        render :new
      end
    end

    # PATCH/PUT - Member Profile
    def update
      if @member_profile.update(member_profile_params)
        redirect_to member_profiles_url, notice: 'Member Profile was Successfully Updated.'
      else
        render :edit
      end
    end

    # DELETE - Member Profile
    def destroy
      @member_profile.destroy
      redirect_to member_profiles_url, notice: 'Member Profile was Successfully Destroyed.'
    end

    private

    # Common Callbacks
    def set_member_profile
      @member_profile = Phcmembers::Member::Profile.find(params[:id])
    end

    # Whitelist
    def member_profile_params
      params.require(:member_profile).permit(:mfirstname, :mlastname, :mtitle, :memail, :mphone, :mnotes, :slug, :user_id, :user_name)
    end

  end
end
