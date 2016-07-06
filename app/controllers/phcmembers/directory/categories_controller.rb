require_dependency "phcmembers/application_controller"

module Phcmembers
  class Directory::CategoriesController < ApplicationController
    before_action :set_directory_category, only: [:show, :edit, :update, :destroy]

    # GET /directory/categories
    def index
      @directory_categories = Directory::Category.all
    end

    # GET /directory/categories/1
    def show
    end

    # GET /directory/categories/new
    def new
      @directory_category = Directory::Category.new
    end

    # GET /directory/categories/1/edit
    def edit
    end

    # POST /directory/categories
    def create
      @directory_category = Directory::Category.new(directory_category_params)

      if @directory_category.save
        redirect_to @directory_category, notice: 'Category was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /directory/categories/1
    def update
      if @directory_category.update(directory_category_params)
        redirect_to @directory_category, notice: 'Category was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /directory/categories/1
    def destroy
      @directory_category.destroy
      redirect_to directory_categories_url, notice: 'Category was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_directory_category
        @directory_category = Directory::Category.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def directory_category_params
        params.fetch(:directory_category, {})
      end
  end
end
