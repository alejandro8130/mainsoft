json.array!(@tipos_pagos) do |tipos_pago|
  json.extract! tipos_pago, :id, :nombre
  json.url tipos_pago_url(tipos_pago, format: :json)
end
