class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :dates
      t.boolean :status
      t.references :user, null: false, foreign_key: true
      t.references :ovni, null: false, foreign_key: true

      t.timestamps
    end
  end
end
