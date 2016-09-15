json.array!(@tipos_documentos) do |tipos_documento|
  json.extract! tipos_documento, :id, :nombre
  json.url tipos_documento_url(tipos_documento, format: :json)
end
