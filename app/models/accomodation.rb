class Accomodation < ApplicationRecord
    validates :available_beds,
    presence: true,
    numericality: { only_integer: true , greater_than: 0 }
    
    validates :price,
    presence: true,
    numericality: { only_integer: true, greater_than: 0 }

    validates :description, 
    presence: true, 
    length: { minimum: 5 }

    validates :welcome_message,
    presence: true

    belongs_to :admin, class_name: "User"
    belongs_to :city
    has_many :reservations, dependent: :destroy

end

