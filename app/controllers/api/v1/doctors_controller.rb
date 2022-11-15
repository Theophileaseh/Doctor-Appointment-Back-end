class Api::V1::DoctorsController < ApplicationController
  before_action :authorize_request, only: %i[create update destroy]
  before_action :set_doctor, only: %i[show update destroy]

  # GET /doctors
  def index
    @doctors = Doctor.all

    render json: @doctors
  end

  # GET /doctors/1
  def show
    render json: @doctor
  end

  # POST /doctors
  def create
    @doctor = Doctor.new(doctor_params)

    if current_user.role == 'admin'
      @doctor.save
      render json: @doctor, status: :created
    elsif current_user.role != 'admin'
      render json: { message: 'You are not an admin user' }
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctors/1
  def update
    if @doctor.update(doctor_params)
      render json: @doctor
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctors/1
  def destroy
    @doctor.destroy
    render json: Doctor.all
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def doctor_params
    params.require(:doctor).permit(:user_id, :name, :specialization, :picture, :gender)
  end
end
