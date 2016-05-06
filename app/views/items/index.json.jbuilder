json.array!(@items) do |item|
  json.extract! item, :id, :category, :name, :image, :count
  json.url item_url(item, format: :json)
end
