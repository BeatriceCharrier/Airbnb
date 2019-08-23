class Accomodation < ApplicationRecord
    validates :name,
    numericality: { greater_than : 0 },
    presence :true

    validates :price,
    numericality: { greater_than : 0 },
    numericality: { only_integer: true },
    presence :true

    validates :description, length: { minimum: 140 }

    validates :welcome_message,
    presence :true
end
