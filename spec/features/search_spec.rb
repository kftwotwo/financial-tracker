# require 'rails_helper'
#
# describe "Search" do
#   before :each do
#     @user = create(:user)
#     sign_in @user
#   end
#
#   it "search and return a category", js: true do
#     category = create(:category)
#     category = create(:category, name: 'Pizza')
#     visit root_path
#     visit root_path
#     fill_in 'search', :with => 'Rent'
#     page.save_screenshot('/Users/Guest/Desktop/screenShot.png')
#     expect(page).to have_content('Pizza', count: 1)
#   end
# end
