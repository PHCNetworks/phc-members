require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

module Phcmembers
  RSpec.describe Connections::CategorylistingsController, type: :controller do

    # This should return the minimal set of attributes required to create a valid
    # Connections::Categorylisting. As you add validations to Connections::Categorylisting, be sure to
    # adjust the attributes here as well.
    let(:valid_attributes) {
      skip("Add a hash of attributes valid for your model")
    }

    let(:invalid_attributes) {
      skip("Add a hash of attributes invalid for your model")
    }

    # This should return the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in
    # Connections::CategorylistingsController. Be sure to keep this updated too.
    let(:valid_session) { {} }

    describe "GET #index" do
      it "assigns all connections_categorylistings as @connections_categorylistings" do
        categorylisting = Connections::Categorylisting.create! valid_attributes
        get :index, params: {}, session: valid_session
        expect(assigns(:connections_categorylistings)).to eq([categorylisting])
      end
    end

    describe "GET #show" do
      it "assigns the requested connections_categorylisting as @connections_categorylisting" do
        categorylisting = Connections::Categorylisting.create! valid_attributes
        get :show, params: {id: categorylisting.to_param}, session: valid_session
        expect(assigns(:connections_categorylisting)).to eq(categorylisting)
      end
    end

    describe "GET #new" do
      it "assigns a new connections_categorylisting as @connections_categorylisting" do
        get :new, params: {}, session: valid_session
        expect(assigns(:connections_categorylisting)).to be_a_new(Connections::Categorylisting)
      end
    end

    describe "GET #edit" do
      it "assigns the requested connections_categorylisting as @connections_categorylisting" do
        categorylisting = Connections::Categorylisting.create! valid_attributes
        get :edit, params: {id: categorylisting.to_param}, session: valid_session
        expect(assigns(:connections_categorylisting)).to eq(categorylisting)
      end
    end

    describe "POST #create" do
      context "with valid params" do
        it "creates a new Connections::Categorylisting" do
          expect {
            post :create, params: {connections_categorylisting: valid_attributes}, session: valid_session
          }.to change(Connections::Categorylisting, :count).by(1)
        end

        it "assigns a newly created connections_categorylisting as @connections_categorylisting" do
          post :create, params: {connections_categorylisting: valid_attributes}, session: valid_session
          expect(assigns(:connections_categorylisting)).to be_a(Connections::Categorylisting)
          expect(assigns(:connections_categorylisting)).to be_persisted
        end

        it "redirects to the created connections_categorylisting" do
          post :create, params: {connections_categorylisting: valid_attributes}, session: valid_session
          expect(response).to redirect_to(Connections::Categorylisting.last)
        end
      end

      context "with invalid params" do
        it "assigns a newly created but unsaved connections_categorylisting as @connections_categorylisting" do
          post :create, params: {connections_categorylisting: invalid_attributes}, session: valid_session
          expect(assigns(:connections_categorylisting)).to be_a_new(Connections::Categorylisting)
        end

        it "re-renders the 'new' template" do
          post :create, params: {connections_categorylisting: invalid_attributes}, session: valid_session
          expect(response).to render_template("new")
        end
      end
    end

    describe "PUT #update" do
      context "with valid params" do
        let(:new_attributes) {
          skip("Add a hash of attributes valid for your model")
        }

        it "updates the requested connections_categorylisting" do
          categorylisting = Connections::Categorylisting.create! valid_attributes
          put :update, params: {id: categorylisting.to_param, connections_categorylisting: new_attributes}, session: valid_session
          categorylisting.reload
          skip("Add assertions for updated state")
        end

        it "assigns the requested connections_categorylisting as @connections_categorylisting" do
          categorylisting = Connections::Categorylisting.create! valid_attributes
          put :update, params: {id: categorylisting.to_param, connections_categorylisting: valid_attributes}, session: valid_session
          expect(assigns(:connections_categorylisting)).to eq(categorylisting)
        end

        it "redirects to the connections_categorylisting" do
          categorylisting = Connections::Categorylisting.create! valid_attributes
          put :update, params: {id: categorylisting.to_param, connections_categorylisting: valid_attributes}, session: valid_session
          expect(response).to redirect_to(categorylisting)
        end
      end

      context "with invalid params" do
        it "assigns the connections_categorylisting as @connections_categorylisting" do
          categorylisting = Connections::Categorylisting.create! valid_attributes
          put :update, params: {id: categorylisting.to_param, connections_categorylisting: invalid_attributes}, session: valid_session
          expect(assigns(:connections_categorylisting)).to eq(categorylisting)
        end

        it "re-renders the 'edit' template" do
          categorylisting = Connections::Categorylisting.create! valid_attributes
          put :update, params: {id: categorylisting.to_param, connections_categorylisting: invalid_attributes}, session: valid_session
          expect(response).to render_template("edit")
        end
      end
    end

    describe "DELETE #destroy" do
      it "destroys the requested connections_categorylisting" do
        categorylisting = Connections::Categorylisting.create! valid_attributes
        expect {
          delete :destroy, params: {id: categorylisting.to_param}, session: valid_session
        }.to change(Connections::Categorylisting, :count).by(-1)
      end

      it "redirects to the connections_categorylistings list" do
        categorylisting = Connections::Categorylisting.create! valid_attributes
        delete :destroy, params: {id: categorylisting.to_param}, session: valid_session
        expect(response).to redirect_to(connections_categorylistings_url)
      end
    end

  end
end