require 'rails_helper'
require 'spec_helper'

describe UsersController do
  describe "GET #index" do
    it "renders the :index view" do
      get :index
      expect(response).to render_template :index
    end
  end

  # describe "GET#my_animaux" do
  #   let(:user){FactoryGirl.create(:user)}
  #   it "shows the users account page" do
  #     get :my_animaux
  #   expect(response).to render_template('/posts/index')
  #   end
  # end

  describe "GET#new" do
    it "shows the sign up page for new users" do
      get :new
      expect(response).to render_template :'users/_new'
    end
  end

  describe "POST#create" do
    let(:user) {FactoryGirl.create(:user)}
    it "creates a new user" do
      post :create, user: user.attributes
      expect(response).to redirect_to(root_path(user))
    end
  end

end
