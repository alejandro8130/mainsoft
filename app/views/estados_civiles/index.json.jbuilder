json.array!(@estados_civiles) do |estados_civil|
  json.extract! estados_civil, :id, :nombre
  json.url estados_civil_url(estados_civil, format: :json)
end
