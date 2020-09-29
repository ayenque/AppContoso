class Product < ApplicationRecord
    validates :name,presence:{
        message: " es un campo requerido."
    }, uniqueness:{
        message: " ya se encuentra registrado",
        case_sensitive: false
    }
    
    validates :description, presence: {
        message: " es un campo requerido."
    }, length: {
        minimum: 10,
        too_short: " debe tener 10 caracteres como mínimo."
    }

    validates :price, presence: {
        message: " es un campo requerido."
    }

    validates :stock, presence: {
        message: " es un campo requerido."
    }
        
end
