json.array!(@food_lists) do |food_list|
  json.extract! food_list, :id, :meal, :day_id, :food_item_id
  json.url food_list_url(food_list, format: :json)
end
