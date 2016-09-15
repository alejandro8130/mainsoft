class Cargo < ApplicationRecord
    
    has_many :empleados
    
    def name
        self.nombre
    end

    def self.search(search, page)
      where(['upper(nombre) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
    end
    
    validates :nombre, presence: true, length: {minimum: 2, maximum: 50}
    
    validates :salario_devengado, presence: true, :numericality => {:greater_than_or_equal_to => 689454, :less_than_or_equal_to => 9999999}
    
end
