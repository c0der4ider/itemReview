json.extract! item, :id, :name, :code, :category_id, :brand_id, :notes, :inner_comments, :status, :created_at, :updated_at
json.url item_url(item, format: :json)
