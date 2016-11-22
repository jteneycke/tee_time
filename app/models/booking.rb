class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :club

  def pretty_time
    time.strftime("%b %e, %l:%M %p")
  end

end
