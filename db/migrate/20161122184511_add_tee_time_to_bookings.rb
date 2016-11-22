class AddTeeTimeToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :tee_time, :datetime
  end
end
