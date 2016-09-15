class CreateEstadosCiviles < ActiveRecord::Migration[5.0]
  def change
    create_table :estados_civiles do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
