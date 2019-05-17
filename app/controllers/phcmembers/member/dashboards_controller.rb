require_dependency "phcmembers/application_controller"

module Phcmembers
  class Member::DashboardsController < ApplicationController

    # Security & Action Filters
    before_action :authenticate_user!

    # INDEX
    def index
      @member_profile = Phcmembers::Member::Profile.all
      @member_listing = Phcmembers::Member::Listing.all
      @member_address = Phcmembers::Member::Address.all
      @directory_category = Phcmembers::Directory::Category.all
    end

  end
end
