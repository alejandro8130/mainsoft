class Balance < ApplicationRecord
  
  belongs_to :empleado
      
  def self.search(search, page)
    where(['upper(empleado_id) like ?',
    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("empleado_id")
  end
  
  validates :saldo_anterior, presence: true, numericality: { only_integer: true }
  
  validates :entradas, presence: true
  
  validates :salidas, presence: true
  
  validates :saldo_actual, presence: true
  
  validates :caja_nro, presence: true
  
end
