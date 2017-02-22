json.extract! transaction, :id, :user_id, :category_id, :ammount, :name, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
