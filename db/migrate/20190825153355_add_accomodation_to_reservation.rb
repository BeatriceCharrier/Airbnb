class AddAccomodationToReservation < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :accomodation, foreign_key: true
  end
end
