json.array!(@business_types) do |business_type|
  json.extract! business_type, :name, :name, :title
  json.url business_type_url(business_type, format: :json)
end