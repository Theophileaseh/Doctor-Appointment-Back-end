class Api::V1::AppointmentsController < ApplicationController
  before_action :authorize_request, only: %i[create update destroy]
  before_action :set_appointment, only: %i[show update destroy]

  # GET /appointments
  def index
    user = authorize_request.id
    @appointments = Appointment.select('appointments.id, appointments.day_of_appointment,
    appointments.time_of_appointment, appointments.message, appointments.user_id,
    appointments.doctor_id, doctors.name as doctor_name').joins(:user).joins(:doctor).where(user_id: user)

    render json: @appointments
  end

  # GET /appointments/1
  def show
    render json: @appointment
  end

  # POST /appointments
  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      render json: @appointment, status: :created
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointments/1
  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointments/1
  def destroy
    @appointment.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def appointment_params
    params.require(:appointment).permit(:user_id, :doctor_id, :time_of_appointment, :day_of_appointment, :message)
  end
end
