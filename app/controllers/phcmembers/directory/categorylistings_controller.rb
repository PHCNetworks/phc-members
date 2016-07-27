require_dependency "phcmembers/application_controller"

module Phcmembers
  class Directory::CategorylistingsController < ApplicationController
    before_action :set_directory_categorylisting, only: [:show, :edit, :update, :destroy]

    # GET /directory/categorylistings
    def index
      @directory_categorylistings = Directory::Categorylisting.all
    end

    # GET /directory/categorylistings/1
    def show
    end

    # GET /directory/categorylistings/new
    def new
      @directory_categorylisting = Directory::Categorylisting.new
    end

    # GET /directory/categorylistings/1/edit
    def edit
    end

    # POST /directory/categorylistings
    def create
      @directory_categorylisting = Directory::Categorylisting.new(directory_categorylisting_params)

      if @directory_categorylisting.save
        redirect_to @directory_categorylisting, notice: 'Categorylisting was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /directory/categorylistings/1
    def update
      if @directory_categorylisting.update(directory_categorylisting_params)
        redirect_to @directory_categorylisting, notice: 'Categorylisting was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /directory/categorylistings/1
    def destroy
      @directory_categorylisting.destroy
      redirect_to directory_categorylistings_url, notice: 'Categorylisting was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_directory_categorylisting
        @directory_categorylisting = Directory::Categorylisting.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def directory_categorylisting_params
        params.fetch(:directory_categorylisting, {})
      end
  end
end
