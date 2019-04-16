require_dependency "phcmembers/application_controller"

module Phcmembers
  class Api::V1::CategoriesController < ApplicationController

    # Only Responds to API Requests
    respond_to :json

    # Directory Category API
    def index
      @directory_categories = Directory::Category.order('catname ASC')
    end

  end
end
