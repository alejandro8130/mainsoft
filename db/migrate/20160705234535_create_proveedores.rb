class CreateProveedores < ActiveRecord::Migration[5.0]
  def change
    create_table :proveedores do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
