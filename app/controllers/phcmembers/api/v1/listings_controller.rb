require_dependency "phcmembers/application_controller"

module Phcmembers
  class Api::V1::ListingsController < ApplicationController

    # Only Responds to API Requests
    respond_to :json

    # Directory Listing API
    def index
      category = Directory::Category.find(params[:category_id])
      @member_listings = category.listings
    end

  end
end
