require 'rails_helper'

describe "Search" do
  before :each do
    @user = create(:user)
    sign_in @user
  end

  it "search and return a category", js: true do
    category = create(:category)
    category = create(:category, name: 'Diego')
    visit root_path
    visit root_path
    fill_in 'search', :with => 'Diego'
    sleep 1
    page.save_screenshot('/Users/Guest/Desktop/screenShot.png')
    expect(page).to have_content('Diego', count:3)
  end
end
