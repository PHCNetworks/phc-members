require_dependency "phcmembers/application_controller"

module Phcmembers
  class Modules::DashboardsController < ApplicationController

    def index
      @member_profile = Member::Profile.all
      @member_listing = Member::Listing.all
      @member_address = Member::Address.all
      @directory_category = Directory::Category.all
    end

  end
end
