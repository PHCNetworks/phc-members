require_dependency "phcmembers/application_controller"

module Phcmembers
  class Modules::DashboardsController < ApplicationController
  
    # Security & Action Filters
    before_action :membership_info
    
    def index
      @member_profile = Member::Profile.where(oganization_id: membership_info.org_id)
      @member_listing = Member::Listing.where(oganization_id: membership_info.org_id)
      @member_address = Member::Address.where(oganization_id: membership_info.org_id)
      @directory_category = Directory::Category.where(oganization_id: membership_info.org_id)
    end
  
  end
end