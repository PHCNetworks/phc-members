require_dependency "phcmembers/application_controller"

module Phcmembers
  class Connections::MemberaddressesController < ApplicationController
    before_action :set_connections_memberaddress, only: [:show, :edit, :update, :destroy]

    # GET /connections/memberaddresses
    def index
      @connections_memberaddresses = Connections::Memberaddress.all
    end

    # GET /connections/memberaddresses/1
    def show
    end

    # GET /connections/memberaddresses/new
    def new
      @connections_memberaddress = Connections::Memberaddress.new
    end

    # GET /connections/memberaddresses/1/edit
    def edit
    end

    # POST /connections/memberaddresses
    def create
      @connections_memberaddress = Connections::Memberaddress.new(connections_memberaddress_params)

      if @connections_memberaddress.save
        redirect_to @connections_memberaddress, notice: 'Memberaddress was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /connections/memberaddresses/1
    def update
      if @connections_memberaddress.update(connections_memberaddress_params)
        redirect_to @connections_memberaddress, notice: 'Memberaddress was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /connections/memberaddresses/1
    def destroy
      @connections_memberaddress.destroy
      redirect_to connections_memberaddresses_url, notice: 'Memberaddress was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_connections_memberaddress
        @connections_memberaddress = Connections::Memberaddress.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def connections_memberaddress_params
        params.require(:connections_memberaddress).permit(:profile_id, :listing_id)
      end
  end
end
