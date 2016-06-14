json.array!(@flights) do |flight|
  json.extract! flight, :id, :flight_name, :departure_location, :departure_date, :departure_time, :arrival_location, :arrival_date, :arrival_time
  json.url flight_url(flight, format: :json)
end
