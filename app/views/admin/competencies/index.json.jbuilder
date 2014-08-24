json.array!(@competencies) do |competency|
  json.extract! competency, :position_id, :cluster_id, :name, :title, :description, :rank
  json.url competency_url(competency, format: :json)
end