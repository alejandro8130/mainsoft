json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :apellido, :nro_documento, :tipos_documento_id, :cargo_id, :telefono, :celular, :email, :direccion, :ciudad_id, :estados_civil_id, :inicio_contrato, :fin_contrato, :hora_entrada, :hora_salida, :fecha_nacimiento, :genero, :factor_rh, :usuario_id
  json.url empleado_url(empleado, format: :json)
end
