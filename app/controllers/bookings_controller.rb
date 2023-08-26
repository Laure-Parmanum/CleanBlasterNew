class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

private
  def booking_params
    params.require(:booking).permit(:name, :home_add, :num, :date)
  end
end
