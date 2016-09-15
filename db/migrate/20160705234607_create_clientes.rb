class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :nro_documento
      t.references :tipos_documento, foreign_key: true
      t.string :telefono
      t.string :celular
      t.string :email
      t.string :direccion
      t.references :ciudad, foreign_key: true
      t.date :fecha_nacimiento
      t.boolean :genero

      t.timestamps
    end
  end
end
