require_dependency "phcmembers/application_controller"

module Phcmembers
  class Api::DirectoriesController < ApplicationController
  
    # Directory Category API
    def index
      @directory_categories = Directory::Category.where(membership_id: membership_info.id).order('catname ASC')
    end
    
    # Directory Listing API
    def show
      category = Directory::Category.find(params[:category_id])
      @directory_listings = category.catlists.where(membership_id: membership_info.id)
    end
  
  end
end