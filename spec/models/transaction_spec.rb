require 'rails_helper'

describe Transaction  do
  it { should have_db_column :user_id }
  it { should have_db_column :category_id }
  it { should have_db_column :name }
  it { should belong_to :user }
  it { should belong_to :category }
end
