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

  it "edits a category" do
    visit root_path
    click_link 'Rent'
    click_link 'Edit'
    fill_in 'Name', :with => 'Renting Stuff'
    click_on 'Create Category'
    click_on 'Dashboard'
    expect(page).to have_content('Renting Stuff', count: 3)
  end

  it "deletes a category" do
    visit root_path
    click_link 'Destroy'
    expect(page).to have_content('')
  end
end
