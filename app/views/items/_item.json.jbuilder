json.extract! item, :id, :name, :description, :course, :price_of_course, :currency, :date, :description_of_course, :teachers, :created_at, :updated_at
json.url item_url(item, format: :json)
