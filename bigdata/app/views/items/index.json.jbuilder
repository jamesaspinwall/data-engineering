json.array!(@items) do |item|
  json.extract! item, :id, :merchant_id, :description, :price
  json.url item_url(item, format: :json)
end
