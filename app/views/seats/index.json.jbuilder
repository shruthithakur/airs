json.array!(@seats) do |seat|
  json.extract! seat, :id, :seat_id, :row, :column, :price, :status, :flight_id
  json.url seat_url(seat, format: :json)
end
