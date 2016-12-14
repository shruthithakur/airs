json.array!(@passenger_details) do |passenger_detail|
  json.extract! passenger_detail, :id, :first_name, :last_name, :gender, :nationality, :passport_number
  json.url passenger_detail_url(passenger_detail, format: :json)
end
