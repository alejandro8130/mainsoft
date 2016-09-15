class CreateBalances < ActiveRecord::Migration[5.0]
  def change
    create_table :balances do |t|
      t.integer :saldo_anterior
      t.integer :entradas
      t.integer :salidas
      t.integer :saldo_actual
      t.integer :caja_nro
      t.references :empleado, foreign_key: true

      t.timestamps
    end
  end
end
