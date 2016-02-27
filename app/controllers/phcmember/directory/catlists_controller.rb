require_dependency "phcmember/application_controller"

module Phcmember
  class Directory::CatlistsController < ApplicationController
    before_action :set_directory_catlist, only: [:show, :edit, :update, :destroy]

    # GET /directory/catlists
    def index
      @directory_catlists = Directory::Catlist.all
    end

    # GET /directory/catlists/1
    def show
    end

    # GET /directory/catlists/new
    def new
      @directory_catlist = Directory::Catlist.new
    end

    # GET /directory/catlists/1/edit
    def edit
    end

    # POST /directory/catlists
    def create
      @directory_catlist = Directory::Catlist.new(directory_catlist_params)

      if @directory_catlist.save
        redirect_to @directory_catlist, notice: 'Catlist was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /directory/catlists/1
    def update
      if @directory_catlist.update(directory_catlist_params)
        redirect_to @directory_catlist, notice: 'Catlist was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /directory/catlists/1
    def destroy
      @directory_catlist.destroy
      redirect_to directory_catlists_url, notice: 'Catlist was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_directory_catlist
        @directory_catlist = Directory::Catlist.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def directory_catlist_params
        params.require(:directory_catlist).permit(:listing_id, :cateegory)
      end
  end
end
