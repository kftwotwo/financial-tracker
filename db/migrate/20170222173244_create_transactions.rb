class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :category_id
      t.float :ammount
      t.string :name

      t.timestamps
    end
  end
end
