class CreateTiposDocumentos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos_documentos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
