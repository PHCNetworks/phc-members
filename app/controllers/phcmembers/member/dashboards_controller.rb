require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::DashboardsController < ApplicationController

    # Security & Action Filters
    before_action :authenticate_user!

    def index
      @member_profile = Phcmembers::Member::Profile
      @member_listing = Phcmembers::Member::Listing
      @member_address = Phcmembers::Member::Address
      @directory_category = Phcmembers::Directory::Category
    end

  end
end
