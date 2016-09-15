json.extract! venta, :id, :fecha, :hora, :total, :tipos_pago_id, :empleado_id, :cliente_id, :created_at, :updated_at
json.url venta_url(venta, format: :json)