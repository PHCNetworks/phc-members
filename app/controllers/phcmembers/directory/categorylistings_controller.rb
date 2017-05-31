require_dependency "phcmembers/application_controller"

module Phcmembers
  class Directory::CategorylistingsController < ApplicationController

    # Security & Action Filters
    before_action :set_paper_trail_whodunnit
    before_action :set_directory_category_listing, only: [:show]

    # INDEX - Directory Category/Listings
    def index
      @directory_categorylistings = Directory::Categorylisting.all
    end

    # DETAILED - Directory Category/Listings
    def show
      @directory_categorylisting = Directory::Categorylisting.find(params[:id])
      @directory_categorylistings_versions = Phcmembers::CategoryListingVersions.where(item_id: @directory_category, item_type: 'Phcmembers::Directory::Category')
    end

    private

    # Common Callbacks
    def set_directory_category_listing
      @directory_categorylisting = Directory::Categorylisting.find(params[:id])
    end

  end
end
