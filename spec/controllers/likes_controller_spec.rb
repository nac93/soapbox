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

describe LikesController do

  # This should return the minimal set of attributes required to create a valid
  # Like. As you add validations to Like, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LikesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all likes as @likes" do
      like = Like.create! valid_attributes
      get :index, {}, valid_session
      assigns(:likes).should eq([like])
    end
  end

  describe "GET show" do
    it "assigns the requested like as @like" do
      like = Like.create! valid_attributes
      get :show, {:id => like.to_param}, valid_session
      assigns(:like).should eq(like)
    end
  end

  describe "GET new" do
    it "assigns a new like as @like" do
      get :new, {}, valid_session
      assigns(:like).should be_a_new(Like)
    end
  end

  describe "GET edit" do
    it "assigns the requested like as @like" do
      like = Like.create! valid_attributes
      get :edit, {:id => like.to_param}, valid_session
      assigns(:like).should eq(like)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Like" do
        expect {
          post :create, {:like => valid_attributes}, valid_session
        }.to change(Like, :count).by(1)
      end

      it "assigns a newly created like as @like" do
        post :create, {:like => valid_attributes}, valid_session
        assigns(:like).should be_a(Like)
        assigns(:like).should be_persisted
      end

      it "redirects to the created like" do
        post :create, {:like => valid_attributes}, valid_session
        response.should redirect_to(Like.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved like as @like" do
        # Trigger the behavior that occurs when invalid params are submitted
        Like.any_instance.stub(:save).and_return(false)
        post :create, {:like => {}}, valid_session
        assigns(:like).should be_a_new(Like)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Like.any_instance.stub(:save).and_return(false)
        post :create, {:like => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested like" do
        like = Like.create! valid_attributes
        # Assuming there are no other likes in the database, this
        # specifies that the Like created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Like.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => like.to_param, :like => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested like as @like" do
        like = Like.create! valid_attributes
        put :update, {:id => like.to_param, :like => valid_attributes}, valid_session
        assigns(:like).should eq(like)
      end

      it "redirects to the like" do
        like = Like.create! valid_attributes
        put :update, {:id => like.to_param, :like => valid_attributes}, valid_session
        response.should redirect_to(like)
      end
    end

    describe "with invalid params" do
      it "assigns the like as @like" do
        like = Like.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Like.any_instance.stub(:save).and_return(false)
        put :update, {:id => like.to_param, :like => {}}, valid_session
        assigns(:like).should eq(like)
      end

      it "re-renders the 'edit' template" do
        like = Like.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Like.any_instance.stub(:save).and_return(false)
        put :update, {:id => like.to_param, :like => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested like" do
      like = Like.create! valid_attributes
      expect {
        delete :destroy, {:id => like.to_param}, valid_session
      }.to change(Like, :count).by(-1)
    end

    it "redirects to the likes list" do
      like = Like.create! valid_attributes
      delete :destroy, {:id => like.to_param}, valid_session
      response.should redirect_to(likes_url)
    end
  end

end
