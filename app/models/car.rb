class Car < ApplicationRecord
    validates :marca, presence: true
    validates :modelo, presence: true
    validates :transmision, presence: true
    validates :anio, presence: true
    validates :capacidad, presence: true
    validates :preciodiario, presence: true   
end