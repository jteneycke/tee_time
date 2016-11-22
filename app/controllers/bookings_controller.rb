class BookingsController < ApplicationController

  def create
    @booking = Booking.create!(booking_params)
    flash[:create] = "You have booked a tee time for #{@booking.pretty_time}"
    redirect_to root_path
  end

  def destroy
    booking = Booking.find(params[:id])
    flash[:destroy] = "You have cancelled your booking for #{booking.pretty_time}"

    booking.destroy

    redirect_to root_path
  end

  def booking_params
    params.require(:booking).permit!
  end
end
