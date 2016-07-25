require_dependency "phcmembers/application_controller"

module Phcmembers
  class Connections::CategorylistingsController < ApplicationController
    before_action :set_connections_categorylisting, only: [:show, :edit, :update, :destroy]

    # GET /connections/categorylistings
    def index
      @connections_categorylistings = Connections::Categorylisting.all
    end

    # GET /connections/categorylistings/1
    def show
    end

    # GET /connections/categorylistings/new
    def new
      @connections_categorylisting = Connections::Categorylisting.new
    end

    # GET /connections/categorylistings/1/edit
    def edit
    end

    # POST /connections/categorylistings
    def create
      @connections_categorylisting = Connections::Categorylisting.new(connections_categorylisting_params)

      if @connections_categorylisting.save
        redirect_to @connections_categorylisting, notice: 'Categorylisting was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /connections/categorylistings/1
    def update
      if @connections_categorylisting.update(connections_categorylisting_params)
        redirect_to @connections_categorylisting, notice: 'Categorylisting was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /connections/categorylistings/1
    def destroy
      @connections_categorylisting.destroy
      redirect_to connections_categorylistings_url, notice: 'Categorylisting was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_connections_categorylisting
        @connections_categorylisting = Connections::Categorylisting.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def connections_categorylisting_params
        params.require(:connections_categorylisting).permit(:category_id, :listing_id)
      end
  end
end
