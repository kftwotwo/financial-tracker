require 'rails_helper'

describe CategoriesController do
  before :each do
    @user = create(:user)
    @category = create(:category)
    sign_in @user
  end

  after :each do
    sign_out :user
  end

  describe "GET index" do
    it "renders a 200 response" do
      get :index, user_id: @user.id
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index, user_id: @user.id
      expect(response).to render_template(:index)
    end
  end

  describe "GET new" do
    it "renders a 200 response" do
      get :new, user_id: @user.id
      expect(response.status).to eq(200)
    end

    it "renders the new template" do
      get :new, user_id: @user.id
      expect(response).to render_template(:new)
    end
  end
end
