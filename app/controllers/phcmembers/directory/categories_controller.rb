require_dependency "phcmembers/application_controller"

module Phcmembers
  class Directory::CategoriesController < ApplicationController

    # Security & Action Filters
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_directory_category, only: [:show, :edit, :update, :destroy]

    # INDEX - Directory Category
    def index
      @directory_categories = Directory::Category.all
    end

    # DETAILED - Directory Category
    def show
      @directory_category = Directory::Category.find(params[:id])
      @directory_category_versions = Phcmembers::CategoryVersions.where(item_id: @directory_category, item_type: 'Phcmembers::Directory::Category')
    end

    # NEW - Directory Category
    def new
      @directory_category.user_id = current_user.id
      @directory_category = Directory::Category.new
    end

    # EDIT - Directory Category
    def edit
    end

    # POST - Directory Category
    def create
      @directory_category = Directory::Category.new(directory_category_params)
      @directory_category.user_id = current_user.id
      if @directory_category.save
        redirect_to directory_categories_url, notice: 'Category was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT - Directory Category
    def update
      @directory_category.user_id = current_user.id
      if @directory_category.update(directory_category_params)
        redirect_to directory_categories_url, notice: 'Category was successfully updated.'
        else
          render :edit
      end
    end

    # DELETE - Directory Category
    def destroy
      @directory_category.destroy
      redirect_to directory_categories_url, notice: 'Category was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_directory_category
      @directory_category = Directory::Category.find(params[:id])
    end

    # Whitelist
    def directory_category_params
      params.require(:directory_category).permit(:catname, :slug, :user_id, :username)
    end

  end
end
