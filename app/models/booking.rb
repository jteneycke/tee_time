class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :club

  scope :on_date, -> (date) { where("DATE(tee_time) = ?", date) }

  def pretty_time
    tee_time.strftime("%b %e, %l:%M %p")
  end

end
