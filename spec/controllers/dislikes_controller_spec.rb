require 'spec_helper'

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

describe DislikesController do

  # This should return the minimal set of attributes required to create a valid
  # Dislike. As you add validations to Dislike, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DislikesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all dislikes as @dislikes" do
      dislike = Dislike.create! valid_attributes
      get :index, {}, valid_session
      assigns(:dislikes).should eq([dislike])
    end
  end

  describe "GET show" do
    it "assigns the requested dislike as @dislike" do
      dislike = Dislike.create! valid_attributes
      get :show, {:id => dislike.to_param}, valid_session
      assigns(:dislike).should eq(dislike)
    end
  end

  describe "GET new" do
    it "assigns a new dislike as @dislike" do
      get :new, {}, valid_session
      assigns(:dislike).should be_a_new(Dislike)
    end
  end

  describe "GET edit" do
    it "assigns the requested dislike as @dislike" do
      dislike = Dislike.create! valid_attributes
      get :edit, {:id => dislike.to_param}, valid_session
      assigns(:dislike).should eq(dislike)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Dislike" do
        expect {
          post :create, {:dislike => valid_attributes}, valid_session
        }.to change(Dislike, :count).by(1)
      end

      it "assigns a newly created dislike as @dislike" do
        post :create, {:dislike => valid_attributes}, valid_session
        assigns(:dislike).should be_a(Dislike)
        assigns(:dislike).should be_persisted
      end

      it "redirects to the created dislike" do
        post :create, {:dislike => valid_attributes}, valid_session
        response.should redirect_to(Dislike.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved dislike as @dislike" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dislike.any_instance.stub(:save).and_return(false)
        post :create, {:dislike => {}}, valid_session
        assigns(:dislike).should be_a_new(Dislike)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dislike.any_instance.stub(:save).and_return(false)
        post :create, {:dislike => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested dislike" do
        dislike = Dislike.create! valid_attributes
        # Assuming there are no other dislikes in the database, this
        # specifies that the Dislike created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Dislike.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => dislike.to_param, :dislike => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested dislike as @dislike" do
        dislike = Dislike.create! valid_attributes
        put :update, {:id => dislike.to_param, :dislike => valid_attributes}, valid_session
        assigns(:dislike).should eq(dislike)
      end

      it "redirects to the dislike" do
        dislike = Dislike.create! valid_attributes
        put :update, {:id => dislike.to_param, :dislike => valid_attributes}, valid_session
        response.should redirect_to(dislike)
      end
    end

    describe "with invalid params" do
      it "assigns the dislike as @dislike" do
        dislike = Dislike.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dislike.any_instance.stub(:save).and_return(false)
        put :update, {:id => dislike.to_param, :dislike => {}}, valid_session
        assigns(:dislike).should eq(dislike)
      end

      it "re-renders the 'edit' template" do
        dislike = Dislike.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dislike.any_instance.stub(:save).and_return(false)
        put :update, {:id => dislike.to_param, :dislike => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested dislike" do
      dislike = Dislike.create! valid_attributes
      expect {
        delete :destroy, {:id => dislike.to_param}, valid_session
      }.to change(Dislike, :count).by(-1)
    end

    it "redirects to the dislikes list" do
      dislike = Dislike.create! valid_attributes
      delete :destroy, {:id => dislike.to_param}, valid_session
      response.should redirect_to(dislikes_url)
    end
  end

end
