require_dependency "phcmembers/application_controller"

module Phcmembers
  class Members::ContactsController < ApplicationController
    before_action :set_members_contact, only: [:show, :edit, :update, :destroy]

    # GET /members/contacts
    def index
      @members_contacts = Members::Contact.all
    end

    # GET /members/contacts/1
    def show
    end

    # GET /members/contacts/new
    def new
      @members_contact = Members::Contact.new
    end

    # GET /members/contacts/1/edit
    def edit
    end

    # POST /members/contacts
    def create
      @members_contact = Members::Contact.new(members_contact_params)

      if @members_contact.save
        redirect_to @members_contact, notice: 'Contact was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /members/contacts/1
    def update
      if @members_contact.update(members_contact_params)
        redirect_to @members_contact, notice: 'Contact was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /members/contacts/1
    def destroy
      @members_contact.destroy
      redirect_to members_contacts_url, notice: 'Contact was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_members_contact
        @members_contact = Members::Contact.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def members_contact_params
        params.fetch(:members_contact, {})
      end
  end
end
