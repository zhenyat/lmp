json.array!(@unit_types) do |unit_type|
  json.extract! unit_type, :name, :name, :title
  json.url unit_type_url(unit_type, format: :json)
end