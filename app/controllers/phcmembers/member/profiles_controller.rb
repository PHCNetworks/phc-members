require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::ProfilesController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_member_profile, only: [:show, :edit, :update, :destroy]
    layout "phcmembers/member_profile", :only => [ :show ]

    # INDEX
    def index
      @member_profiles = Member::Profile.all
    end

    # SHOW
    def show
      @member_profile = Member::Profile.find(params[:id])
      @member_profile_versions = Phcmembers::ProfileVersions.where(item_id: @member_profile, item_type: 'Phcmembers::Member::Profile')
    end

    # NEW
    def new
      @member_profile = Member::Profile.new
    end

    # EDIT
    def edit
    end

    # CREATE
    def create
      @member_profile = Member::Profile.new(member_profile_params)
      @member_profile.user_id = current_user.id
      if @member_profile.save
        redirect_to member_profiles_url, :flash => { :success => 'Profile was successfully created.' }
      else
        render :new
      end
    end

    # UPDATE
    def update
      if @member_profile.update(member_profile_params)
        redirect_to member_profiles_url, :flash => { :success => 'Profile was successfully updated.' }
      else
        render :edit
      end
    end

    # DELETE
    def destroy
      @member_profile.destroy
      redirect_to member_profiles_url, :flash => { :error => 'Profile was successfully destroyed.' }
    end

    private

    # Common Callbacks
    def set_member_profile
      @member_profile = Member::Profile.find(params[:id])
    end

    # Whitelist
    def member_profile_params
      params.require(:member_profile).permit(:member_first_name, :member_last_name, :member_title, :member_email, :member_phone, :member_notes, :slug, :user_id)
    end

  end
end
