class BookingsController < ApplicationController

  def index
  end

  def create
    @booking = Booking.create!(booking_params)
    flash[:create] = "You have booked a tee time for #{@booking.pretty_time}" 
    redirect_to club_path(@booking.club, date: booking_params[:date])
  end

  def destroy
    @booking = Booking.find(params[:id])

    club = @booking.club
    date = @booking.date
    flash[:destroy] = "You have cancelled your booking for #{@booking.pretty_time}"

    @booking.destroy

    redirect_to club_path(club, date: date)
  end

  def booking_params
    params.require(:booking).permit!
  end

end
