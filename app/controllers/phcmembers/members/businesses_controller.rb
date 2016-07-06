require_dependency "phcmembers/application_controller"

module Phcmembers
  class Members::BusinessesController < ApplicationController
    before_action :set_members_business, only: [:show, :edit, :update, :destroy]

    # GET /members/businesses
    def index
      @members_businesses = Members::Business.all
    end

    # GET /members/businesses/1
    def show
    end

    # GET /members/businesses/new
    def new
      @members_business = Members::Business.new
    end

    # GET /members/businesses/1/edit
    def edit
    end

    # POST /members/businesses
    def create
      @members_business = Members::Business.new(members_business_params)

      if @members_business.save
        redirect_to @members_business, notice: 'Business was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /members/businesses/1
    def update
      if @members_business.update(members_business_params)
        redirect_to @members_business, notice: 'Business was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /members/businesses/1
    def destroy
      @members_business.destroy
      redirect_to members_businesses_url, notice: 'Business was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_members_business
        @members_business = Members::Business.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def members_business_params
        params.fetch(:members_business, {})
      end
  end
end
