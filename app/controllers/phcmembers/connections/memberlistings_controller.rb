require_dependency "phcmembers/application_controller"

module Phcmembers
  class Connections::MemberlistingsController < ApplicationController
    before_action :set_connections_memberlisting, only: [:show, :edit, :update, :destroy]

    # GET /connections/memberlistings
    def index
      @connections_memberlistings = Connections::Memberlisting.all
    end

    # GET /connections/memberlistings/1
    def show
    end

    # GET /connections/memberlistings/new
    def new
      @connections_memberlisting = Connections::Memberlisting.new
    end

    # GET /connections/memberlistings/1/edit
    def edit
    end

    # POST /connections/memberlistings
    def create
      @connections_memberlisting = Connections::Memberlisting.new(connections_memberlisting_params)

      if @connections_memberlisting.save
        redirect_to @connections_memberlisting, notice: 'Memberlisting was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /connections/memberlistings/1
    def update
      if @connections_memberlisting.update(connections_memberlisting_params)
        redirect_to @connections_memberlisting, notice: 'Memberlisting was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /connections/memberlistings/1
    def destroy
      @connections_memberlisting.destroy
      redirect_to connections_memberlistings_url, notice: 'Memberlisting was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_connections_memberlisting
        @connections_memberlisting = Connections::Memberlisting.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def connections_memberlisting_params
        params.require(:connections_memberlisting).permit(:profile_id, :listing_id)
      end
  end
end
