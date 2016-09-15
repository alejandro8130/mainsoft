class CreateDetalles < ActiveRecord::Migration[5.0]
  def change
    create_table :detalles do |t|
      t.references :producto, foreign_key: true
      t.integer :cantidad_producto
      t.integer :valor
      t.references :venta, foreign_key: true

      t.timestamps
    end
  end
end
