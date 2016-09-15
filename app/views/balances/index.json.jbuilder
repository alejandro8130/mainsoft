json.array!(@balances) do |balance|
  json.extract! balance, :id, :saldo_anterior, :entradas, :salidas, :saldo_actual, :caja_nro, :empleado_id
  json.url balance_url(balance, format: :json)
end
