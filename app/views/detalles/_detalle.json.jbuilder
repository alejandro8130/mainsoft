json.extract! detalle, :id, :producto_id, :cantidad_producto, :valor, :venta_id, :created_at, :updated_at
json.url detalle_url(detalle, format: :json)