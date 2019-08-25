class AddAdminToAccomodation < ActiveRecord::Migration[5.2]
  def change
      add_reference :accomodations, :admin, index: true
  end
end
