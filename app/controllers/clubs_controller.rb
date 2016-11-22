class ClubsController < ApplicationController

  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
    @date = DateTime.parse(params[:date])
    @user = current_user
    start_time = @date.change({ hour: 9, min: 0, sec: 0})

    @time_slots = (0..23).map do |slot|
      (start_time + (slot * 20).minutes)
    end

    @club_bookings = Booking.where(club_id: @club).on_date(@date)
  end

end
