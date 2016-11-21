class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :club_id
      t.integer :user_id
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
