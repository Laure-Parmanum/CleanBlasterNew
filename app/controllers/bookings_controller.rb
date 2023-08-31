class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
    @other_bookings = Booking.all.where.not(user_id: current_user.id)
  end

  def new
    @booking = Booking.new
    @service = Service.find(params[:service_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.service_id = params[:service_id]
    @booking.user = current_user
    @booking.save
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.update(status: "confirmed")
    redirect_to bookings_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.update(status: "rejected")
    redirect_to bookings_path
  end

private
  def booking_params
    params.require(:booking).permit(:name, :home_add, :num, :date)
  end
end
