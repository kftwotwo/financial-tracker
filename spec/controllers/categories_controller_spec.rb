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

    it "assigns a new category" do
      get :new, user_id: @user.id
      expect(assigns(:category)).to be_a_new(Category)
    end
  end

  describe "GET edit" do
    it "renders a 200 response" do
      get :edit, user_id: @user.id, id: @category.id
      expect(response.status).to eq(200)
    end

    it "render the edit template" do
      get :edit, user_id: @user.id, id: @category.id
      expect(response).to render_template(:edit)
    end
  end

  describe "GET show" do
    it "renders a 200 response" do
      get :show, user_id: @user.id, id: @category.id
      expect(response.status).to eq(200)
    end

    it "render the show template" do
      get :show, user_id: @user.id, id: @category.id
      expect(response).to render_template(:show)
    end
  end

  describe "POST create" do
    it "renders a 302 response" do
      post :create, user_id: @user.id, :category => {name: "Test"}
      expect(response.status).to eq(302)
    end
  end

  describe "PATCH update" do
    it "renders a 302 response" do
      patch :update, user_id: @user.id, id: @category.id, :category => {name: 'test2'}
      expect(response.status).to eq(302)
    end
  end
end
