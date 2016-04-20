json.array!(@program_days) do |program_day|
  json.extract! program_day, :id, :weight, :workout, :water_consumed, :green_used, :purple_used, :red_used, :yellow_used, :blue_used, :orange_used, :tbsp_used
  json.url program_day_url(program_day, format: :json)
end
