json.array!(@businesses) do |business|
  json.extract! business, :name, :name, :title
  json.url business_url(business, format: :json)
end