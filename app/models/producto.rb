class Producto < ApplicationRecord
  
  belongs_to :proveedor
  
  def name
    self.nombre
  end
  
  def self.search(search, page)
    where(['upper(nombre) like ?',
    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
  end
  
  validates  :nombre, presence: true, length: {minimum: 2, maximum: 50}
  
  validates  :marca, presence: true, length: {minimum: 2, maximum: 50}
  
  validates :garantia, presence: true
  
  validates :cantidad, presence: true, :numericality => {:greater_than_or_equal_to => 1, :less_than_or_equal_to => 999999}
  
  validates :precio, presence: true, :numericality => {:greater_than_or_equal_to => 100, :less_than_or_equal_to => 9999999}
  
end
