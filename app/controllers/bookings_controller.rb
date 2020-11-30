class BookingsController < ApplicationController
  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @my_flats_bookings = Booking.all.select{ |booking| booking.flat.user === current_user }
    @my_bookings = Booking.where(user: current_user)
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if params[:booking].key?(:status)
      @booking.update(booking_status_params)
    else
      @booking.update(booking_params)
    end
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def booking_status_params
    params.require(:booking).permit(:status)
  end
end
