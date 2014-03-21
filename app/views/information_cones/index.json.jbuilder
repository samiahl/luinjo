json.array!(@information_cones) do |information_cone|
  json.extract! information_cone, :id, :title, :description
  json.url information_cone_url(information_cone, format: :json)
end
