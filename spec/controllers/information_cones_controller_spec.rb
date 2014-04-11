require 'spec_helper'

describe InformationConesController do
  # Creates a valid Information Cone
  let(:information_cone) { Fabricate(:information_cone) }
  let(:user) { Fabricate(:user) }

  describe "GET index" do
    it "assigns all information_cones as @information_cones" do
      get :index, {}
      expect(assigns(:information_cones)).to eq([information_cone])
    end
  end

  describe "GET show" do
    describe "it assigns" do
      context "always" do
        it "the requested information_cone as @information_cone" do
          get :show, {id: information_cone.to_param}
          expect(assigns(:information_cone)).to eq(information_cone)
        end

        it "the requested information_cone's related posts as @posts" do
          get :show , {id: information_cone.to_param}
          expect(assigns(:posts)).to eq(information_cone.posts)
        end
      end

      context "when user is signed in" do
        before :each do
          sign_in user
        end

        context "and user has subscribed to the Information Cone" do
          it "the user's subscription as @subscription" do
            user.information_cones << information_cone
            get :show, {id: information_cone.to_param}
            expect(assigns(:subscription)).to eq(user.subscriptions.find_by(information_cone: information_cone))
          end
        end

        context "and user hasn't subscribed to the Information Cone" do
          it "nil as @subscribtion" do
            get :show, {id: information_cone.to_param}
            expect(assigns(:subscription)).to eq(nil)
          end
        end
      end
    end
  end

  describe "GET new" do
    it "assigns a new information_cone as @information_cone" do
      get :new, {}
      expect(assigns(:information_cone)).to be_a_new(InformationCone)
    end
  end

  describe "GET edit" do
    it "assigns the requested information_cone as @information_cone" do
      get :edit, {:id => information_cone.to_param}
      assigns(:information_cone).should eq(information_cone)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      xit "creates a new InformationCone" do
        expect {
          post :create, {:information_cone => valid_attributes}, valid_session
        }.to change(InformationCone, :count).by(1)
      end

      xit "assigns a newly created information_cone as @information_cone" do
        post :create, {:information_cone => valid_attributes}, valid_session
        assigns(:information_cone).should be_a(InformationCone)
        assigns(:information_cone).should be_persisted
      end

      xit "redirects to the created information_cone" do
        post :create, {:information_cone => valid_attributes}, valid_session
        response.should redirect_to(InformationCone.last)
      end
    end

    describe "with invalid params" do
      xit "assigns a newly created but unsaved information_cone as @information_cone" do
        # Trigger the behavior that occurs when invalid params are submitted
        InformationCone.any_instance.stub(:save).and_return(false)
        post :create, {:information_cone => { "title" => "invalid value" }}, valid_session
        assigns(:information_cone).should be_a_new(InformationCone)
      end

      xit "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        InformationCone.any_instance.stub(:save).and_return(false)
        post :create, {:information_cone => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      xit "updates the requested information_cone" do
        information_cone = InformationCone.create! valid_attributes
        # Assuming there are no other information_cones in the database, this
        # specifies that the InformationCone created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        InformationCone.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => information_cone.to_param, :information_cone => { "title" => "MyString" }}, valid_session
      end

      xit "assigns the requested information_cone as @information_cone" do
        information_cone = InformationCone.create! valid_attributes
        put :update, {:id => information_cone.to_param, :information_cone => valid_attributes}, valid_session
        assigns(:information_cone).should eq(information_cone)
      end

      xit "redirects to the information_cone" do
        information_cone = InformationCone.create! valid_attributes
        put :update, {:id => information_cone.to_param, :information_cone => valid_attributes}, valid_session
        response.should redirect_to(information_cone)
      end
    end

    describe "with invalid params" do
      xit "assigns the information_cone as @information_cone" do
        information_cone = InformationCone.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        InformationCone.any_instance.stub(:save).and_return(false)
        put :update, {:id => information_cone.to_param, :information_cone => { "title" => "invalid value" }}, valid_session
        assigns(:information_cone).should eq(information_cone)
      end

      xit "re-renders the 'edit' template" do
        information_cone = InformationCone.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        InformationCone.any_instance.stub(:save).and_return(false)
        put :update, {:id => information_cone.to_param, :information_cone => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    xit "destroys the requested information_cone" do
      information_cone = InformationCone.create! valid_attributes
      expect {
        delete :destroy, {:id => information_cone.to_param}, valid_session
      }.to change(InformationCone, :count).by(-1)
    end

    xit "redirects to the information_cones list" do
      information_cone = InformationCone.create! valid_attributes
      delete :destroy, {:id => information_cone.to_param}, valid_session
      response.should redirect_to(information_cones_url)
    end
  end

end
