require 'rails_helper'

describe "Category Functionality" do
  before :each do
    user = create(:user)
    category = create(:category)
    sign_in user
  end

  it "creates a category" do
    visit root_path
    click_on 'New Category'
    fill_in 'Name', :with => 'Testing'
    click_on 'Create Category'
    click_on 'Dashboard'
    expect(page).to have_content('Testing', count: 3)
  end
end
