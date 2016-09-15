json.array!(@cargos) do |cargo|
  json.extract! cargo, :id, :nombre, :salario_devengado
  json.url cargo_url(cargo, format: :json)
end
