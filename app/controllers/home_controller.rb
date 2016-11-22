class HomeController < ApplicationController
  def index
    @club = Club.all.first
    @user = User.all.first

    @current_date = DateTime.now
    start_time = @current_date.change({ hour: 9, min: 0, sec: 0})

    @time_slots = (0..23).map do |slot|
      (start_time + (slot * 20).minutes)
    end

    @club_bookings = Booking.where(club_id: @club, date: @current_date)

  end
end
