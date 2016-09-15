class AddAttachmentPhotoToCatalogoRopas < ActiveRecord::Migration
  def self.up
    change_table :catalogo_ropas do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :catalogo_ropas, :photo
  end
end
