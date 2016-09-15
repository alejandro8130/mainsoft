json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre_usuario, :contrasena
  json.url usuario_url(usuario, format: :json)
end
