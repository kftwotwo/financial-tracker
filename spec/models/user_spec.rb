require 'rails_helper'

describe User do
  it { should have_many :transactions }
  it { should have_many :categories }
  it { should have_db_column :balance }
end
