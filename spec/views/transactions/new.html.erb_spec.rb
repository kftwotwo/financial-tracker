require 'rails_helper'

RSpec.describe "transactions/new", type: :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      :user_id => 1,
      :category_id => 1,
      :ammount => 1.5,
      :name => "MyString"
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input#transaction_user_id[name=?]", "transaction[user_id]"

      assert_select "input#transaction_category_id[name=?]", "transaction[category_id]"

      assert_select "input#transaction_ammount[name=?]", "transaction[ammount]"

      assert_select "input#transaction_name[name=?]", "transaction[name]"
    end
  end
end
