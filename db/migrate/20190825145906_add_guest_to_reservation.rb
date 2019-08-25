class AddGuestToReservation < ActiveRecord::Migration[5.2]
  def change
      add_reference :reservations, :guest, index: true
  end
end
