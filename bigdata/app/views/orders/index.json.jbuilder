json.array!(@orders) do |order|
  json.extract! order, :id, :upload_id, :purchaser_id, :item_id, :quantity
  json.url order_url(order, format: :json)
end
