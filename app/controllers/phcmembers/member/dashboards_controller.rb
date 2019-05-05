require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::DashboardsController < ApplicationController

    # Security & Action Filters
    before_action :authenticate_user!

    def index
      @member_profile = Phcmembers::Member::Profile.where(org_id: current_user.org_id)
      @member_listing = Phcmembers::Member::Listing.where(org_id: current_user.org_id)
      @member_address = Phcmembers::Member::Address.where(org_id: current_user.org_id)
      @directory_category = Phcmembers::Directory::Category.where(org_id: current_user.org_id)
    end

  end
end
