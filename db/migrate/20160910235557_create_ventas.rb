class CreateVentas < ActiveRecord::Migration[5.0]
  def change
    create_table :ventas do |t|
      t.date :fecha
      t.time :hora
      t.integer :total
      t.references :tipos_pago, foreign_key: true
      t.references :empleado, foreign_key: true
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
