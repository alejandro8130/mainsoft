class CreateCatalogoRopas < ActiveRecord::Migration[5.0]
  def change
    create_table :catalogo_ropas do |t|
      t.string :nombre
      t.integer :valor

      t.timestamps
    end
  end
end
