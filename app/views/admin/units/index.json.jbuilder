json.array!(@units) do |unit|
  json.extract! unit, :unit_type_id, :name, :name, :title
  json.url unit_url(unit, format: :json)
end