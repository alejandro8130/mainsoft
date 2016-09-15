class Venta < ApplicationRecord
  
  has_many :detalles, :dependent => :destroy
  accepts_nested_attributes_for :detalles, allow_destroy: true

  belongs_to :tipos_pago
  belongs_to :empleado
  belongs_to :cliente
  
  def self.search(search, page)
    where(['upper(empleado_id) like ?',
    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("empleado_id")
  end
  
  def detalles_for_form
    collection = detalles.where(venta_id: id)
    collection.any? ? collection : detalles.build
  end

end
