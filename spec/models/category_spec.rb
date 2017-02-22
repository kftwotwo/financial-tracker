require 'rails_helper'

describe Category do
  it { should have_many :transactions }
  it { should belong_to :user }
  it { should have_db_column :user_id }
  it { should have_db_column :name }
end
