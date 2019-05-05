require_dependency "phcmembers/application_controller"

module Phcmembers
  class Api::V1::CategoriesController < ApplicationController

    # Only Responds to API Requests & Skips Member Profile Info
    skip_before_action :phcmembers_get_member_profile_info
    respond_to :json

    # Directory Category API
    def index
      @directory_categories = Directory::Category.where(org_id: current_user.org_id).order('catname ASC')
    end

  end
end
