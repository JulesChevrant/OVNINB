class AddEndDateToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :return_date, :date
  end
end
