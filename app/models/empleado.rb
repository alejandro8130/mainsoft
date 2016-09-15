class Empleado < ApplicationRecord
  
  belongs_to :tipos_documento
  belongs_to :cargo
  belongs_to :ciudad
  belongs_to :estados_civil
  belongs_to :usuario
  

  def ciudad_nombre
    ciudad.nombre if ciudad
  end

  def ciudad_nombre=(nombre)
    self.ciudad = Ciudad.find_by_nombre(nombre) unless nombre.blank?
  end


  def name
    self.nombre + " " + self.apellido
  end
  
  def self.search(search, page)
    where(['upper(nombre) like ?',
    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
  end
  
  #validaciones
  
  validates  :nombre, presence: true, length: {minimum: 2, maximum: 50}
  
  validates  :apellido, presence: true, length: {minimum: 6, maximum: 50}
  
  validates :nro_documento, presence: true, length: { in: 6..15 , message: "Debe tener entre 6 y 15 digitos"}, 
  numericality: { only_integer: true },uniqueness: true
  
  validates :telefono, presence: true,format: {with: /(\d{3})(\-)([1-9])(\d{6})/, message: "Formato No Válido, Ej: 005-3774684"}
  
  validates :celular, presence: true,format: {with: /(\d{3})(\-)([1-9])(\d{6})/, message: "Formato No Válido, Ej: 310-4874684"}
  
  validates :email, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},uniqueness: true
  
  validates :ciudad_nombre, presence: true
  
  validates :direccion, presence: true
  
  validates :inicio_contrato, presence: true
  
  validates :fin_contrato, presence: true
  
  validates :hora_entrada, presence: true
  
  validates :hora_salida, presence: true
  
  validates :fecha_nacimiento, presence: true
  
  validates :fecha_nacimiento, presence: true
  
  validates :genero, length: {minimum: 1, message: "no puede estar en blanco"}
  
  validates :factor_rh, presence: true, length: {minimum: 2, maximum: 10}
    
end
