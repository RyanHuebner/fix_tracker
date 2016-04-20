json.array!(@food_items) do |food_item|
  json.extract! food_item, :id, :name, :container_color, :container_value
  json.url food_item_url(food_item, format: :json)
end
