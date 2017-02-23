require 'rails_helper'



describe CategoriesController do
  before :each do
    @user = create(:user)
    @category = create(:category)
    @attrs = attributes_for(:category)
    sign_in @user
  end

  def category_attributes
    @attrs
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

  # describe "POST create" do
  #   it "renders a 220 response" do
  #     post :create, user_id: @user.id, category: FactoryGirl.attributes_for(Category.first)
  #     expect(response.status).to eq(200)
  #   end
  # end

  # describe "PATCH update" do
  #   it "renders a 200 response" do
  #     patch :update, category: FactoryGirl.attributes_for(@category)
  #     expect(response.status).to eq(200)
  #   end
  #
  #   it "render the update template" do
  #     patch :update, category: FactoryGirl.attributes_for(@category)
  #     expect(response).to render_template(:show)
  #   end
  # end
end
