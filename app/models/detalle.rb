class Detalle < ApplicationRecord
  belongs_to :producto
  belongs_to :venta, optional: true
end
