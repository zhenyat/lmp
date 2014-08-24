json.array!(@positions) do |position|
  json.extract! position, :business_id, :name, :title
  json.url position_url(position, format: :json)
end