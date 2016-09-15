class Ciudad < ApplicationRecord
  
  belongs_to :departamento
  
  def name
    self.nombre
  end
  
  def self.search(search, page)
    where(['upper(nombre) like ?',
    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
  end
  
end
