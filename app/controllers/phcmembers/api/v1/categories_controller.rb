require_dependency "phcmembers/application_controller"

module Phcmembers
  class Api::V1::CategoriesController < ApplicationController

    # Only Responds to API
    respond_to :json

    # Directory Category API
    def index
      @directory_categories = Directory::Category.where(org_id: current_user.org_id).order('category_name ASC')
    end

  end
end
