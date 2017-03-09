require_dependency "phcmembers/application_controller"

module Phcmembers
  class Modules::DashboardsController < ApplicationController
    before_action :set_modules_dashboard, only: [:show, :edit, :update, :destroy]

    # GET /modules/dashboards
    def index
      @modules_dashboards = Modules::Dashboard.all
    end

    # GET /modules/dashboards/1
    def show
    end

    # GET /modules/dashboards/new
    def new
      @modules_dashboard = Modules::Dashboard.new
    end

    # GET /modules/dashboards/1/edit
    def edit
    end

    # POST /modules/dashboards
    def create
      @modules_dashboard = Modules::Dashboard.new(modules_dashboard_params)

      if @modules_dashboard.save
        redirect_to @modules_dashboard, notice: 'Dashboard was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /modules/dashboards/1
    def update
      if @modules_dashboard.update(modules_dashboard_params)
        redirect_to @modules_dashboard, notice: 'Dashboard was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /modules/dashboards/1
    def destroy
      @modules_dashboard.destroy
      redirect_to modules_dashboards_url, notice: 'Dashboard was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_modules_dashboard
        @modules_dashboard = Modules::Dashboard.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def modules_dashboard_params
        params.fetch(:modules_dashboard, {})
      end
  end
end
