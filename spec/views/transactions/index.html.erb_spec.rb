require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        :user_id => 2,
        :category_id => 3,
        :ammount => 4.5,
        :name => "Name"
      ),
      Transaction.create!(
        :user_id => 2,
        :category_id => 3,
        :ammount => 4.5,
        :name => "Name"
      )
    ])
  end

  it "renders a list of transactions" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
