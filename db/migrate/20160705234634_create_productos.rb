class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :marca
      t.date :garantia
      t.references :proveedor, foreign_key: true
      t.integer :cantidad
      t.integer :precio

      t.timestamps
    end
  end
end
