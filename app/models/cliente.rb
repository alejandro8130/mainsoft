class Cliente < ApplicationRecord
  
  belongs_to :tipos_documento
  belongs_to :ciudad
  
  def ciudad_nombre
    ciudad.nombre if ciudad
  end
 
  def ciudad_nombre=(nombre)
    self.ciudad = Ciudad.find_by_nombre(nombre) unless nombre.blank?
  end

  
  def self.search(search, page)
    where(['upper(nombre) like ?',
    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
  end
  
  validates  :nombre, presence: true, length: {minimum: 2, maximum: 50}
  
  validates  :apellido, presence: true, length: {minimum: 6, maximum: 50}
  
  validates :nro_documento, presence: true, length: { in: 6..15 , message: "Debe tener entre 6 y 15 digitos"}, 
  numericality: { only_integer: true },uniqueness: true
  
  validates :telefono, presence: true,format: {with: /(\d{3})(\-)([1-9])(\d{6})/, message: "Formato No Válido, Ej: 005-3774684"}
  
  validates :celular, presence: true,format: {with: /(\d{3})(\-)([1-9])(\d{6})/, message: "Formato No Válido, Ej: 310-4874684"}
  
  validates :email, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,message: "Debe escribir un formato de correo válido"},uniqueness: true
  
  validates :direccion, presence: true
  
  validates :fecha_nacimiento, presence: true
  
  validates :genero, length: {minimum: 1, message: "no puede estar en blanco"}
  
  validates :ciudad_nombre, presence: true
  
end
