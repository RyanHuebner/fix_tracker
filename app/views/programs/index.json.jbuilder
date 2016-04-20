json.array!(@programs) do |program|
  json.extract! program, :id, :start_weight, :water_goal, :green_limit, :purple_limit, :red_limit, :yellow_limit, :blue_limit, :orange_limit, :tbsp_limit
  json.url program_url(program, format: :json)
end
