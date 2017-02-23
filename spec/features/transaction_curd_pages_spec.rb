require 'rails_helper'

describe "Transaction Functionality" do
  before :each do
    user = create(:user)
    category = create(:category)
    sign_in user
  end

  it "creates a transaction" do
    visit root_path
    click_on 'New Transaction'
    fill_in 'Name', :with => 'Testing'
    fill_in 'Ammount', :with => 1
    click_on 'Create Transaction'
    click_on 'Dashboard'
    expect(page).to have_content('Testing')
  end

  it "edits a transaction" do
    visit root_path
    click_on 'New Transaction'
    fill_in 'Name', :with => 'Testing'
    fill_in 'Ammount', :with => 1
    click_on 'Create Transaction'
    click_on 'Dashboard'
    click_link 'Edit Transaction'
    fill_in 'Name', :with => 'Test2'
    fill_in 'Ammount', :with => 100
    click_on 'Create Transaction'
    click_on 'Dashboard'
    expect(page).to have_content('Test2')
  end

  it "deletes a transaction" do
    visit root_path
    click_on 'New Transaction'
    fill_in 'Name', :with => 'Testing'
    fill_in 'Ammount', :with => 1
    click_on 'Create Transaction'
    click_on 'Dashboard'
    click_on 'Destroy Transaction'
    expect(page).to have_content('')
  end
end
