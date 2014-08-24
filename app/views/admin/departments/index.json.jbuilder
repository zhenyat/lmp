json.array!(@departments) do |department|
  json.extract! department, :unit_id, :business_id, :departmnet_type_id, :name, :title
  json.url department_url(department, format: :json)
end