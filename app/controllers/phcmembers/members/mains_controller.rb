require_dependency "phcmembers/application_controller"

module Phcmembers
  class Members::MainsController < ApplicationController
    before_action :set_members_main, only: [:show, :edit, :update, :destroy]

    # GET /members/mains
    def index
      @members_mains = Members::Main.all
    end

    # GET /members/mains/1
    def show
    end

    # GET /members/mains/new
    def new
      @members_main = Members::Main.new
    end

    # GET /members/mains/1/edit
    def edit
    end

    # POST /members/mains
    def create
      @members_main = Members::Main.new(members_main_params)

      if @members_main.save
        redirect_to @members_main, notice: 'Main was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /members/mains/1
    def update
      if @members_main.update(members_main_params)
        redirect_to @members_main, notice: 'Main was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /members/mains/1
    def destroy
      @members_main.destroy
      redirect_to members_mains_url, notice: 'Main was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_members_main
        @members_main = Members::Main.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def members_main_params
        params.fetch(:members_main, {})
      end
  end
end
