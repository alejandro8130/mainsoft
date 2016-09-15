class CreateEmpleados < ActiveRecord::Migration[5.0]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellido
      t.string :nro_documento
      t.references :tipos_documento, foreign_key: true
      t.references :cargo, foreign_key: true
      t.string :telefono
      t.string :celular
      t.string :email
      t.string :direccion
      t.references :ciudad, foreign_key: true
      t.references :estados_civil, foreign_key: true
      t.date :inicio_contrato
      t.date :fin_contrato
      t.time :hora_entrada
      t.time :hora_salida
      t.date :fecha_nacimiento
      t.boolean :genero
      t.string :factor_rh
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
