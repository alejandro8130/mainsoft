class CreateCargos < ActiveRecord::Migration[5.0]
  def change
    create_table :cargos do |t|
      t.string :nombre
      t.integer :salario_devengado

      t.timestamps
    end
  end
end
