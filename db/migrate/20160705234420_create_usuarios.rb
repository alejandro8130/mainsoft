class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre_usuario
      t.string :contrasena

      t.timestamps
    end
  end
end
