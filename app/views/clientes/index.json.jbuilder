json.array!(@clientes) do |client|
  json.extract! client, :id, :nombre, :apellido, :nro_documento, :tipos_documento_id, :telefono, :celular, :email, :direccion, :ciudad_id, :fecha_nacimiento, :genero
  json.url client_url(client, format: :json)
end
