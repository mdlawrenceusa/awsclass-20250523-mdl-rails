json.extract! category, :id, :name, :image_url, :description, :created_at, :updated_at
json.url category_url(category, format: :json)
