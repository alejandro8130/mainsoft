json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :marca, :garantia, :proveedor_id, :cantidad, :precio
  json.url producto_url(producto, format: :json)
end
