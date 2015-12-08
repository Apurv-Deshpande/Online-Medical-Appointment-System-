class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
require 'booking_decorator'
 def index
    @patient = Patient.find(params[:patient_id])
    @bookings = @patient.bookings
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
    @patient = Patient.find(params[:patient_id])
    @booking = @patient.bookings.find(params[:id])
  end

  # GET /bookings/new
  def new
     @patient = Patient.find(params[:patient_id])
     @booking = @patient.bookings.build
  end

  # GET /bookings/1/edit
  def edit
     @patient = Patient.find(params[:patient_id])
    @booking= @patient.bookings.find(params[:id])
  end

  # POST /bookings
  # POST /bookings.json
  def create
 @patient = Patient.find(params[:patient_id])
  @booking= @patient.bookings.build(params.require(:booking).permit(:LoginName, :DoctorName, :AvailableDate, :Timings ,:Patient , :Doctor))
 if @booking.save
  
   
  redirect_to patient_booking_url(@patient, @booking)
  else
  render :action => "new"
  end
end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    @patient =Patient.find(params[:patient_id])
@booking = Booking.find(params[:id])
if @booking.update_attributes(params.require(:booking).permit(:details))
# Save the booking successfully
redirect_to patient_booking_url(@patient, @booking)
else
render :action => "edit"
end
end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @patient = Patient.find(params[:patient_id])
    @booking = Booking.find(params[:id])
@Booking.destroy
respond_to do |format|
format.html { redirect_to patient_booking_path(@patient) }
format.xml { head :ok }
end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:bookings).permit(:LoginName, :DoctorName, :AvailableDate, :Timings ,:Patient , :Doctor)
    end
end

