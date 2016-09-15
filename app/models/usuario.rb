class Usuario < ApplicationRecord
    
    def name
      self.nombre_usuario
    end
    
    def self.search(search, page)
      where(['upper(nombre_usuario) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre_usuario")
    end
    
end
