class Api::V1::DoctorsController < ApplicationController
  before_action :authorize_request, only: %i[show create update destroy]


  def index
    render json: Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      render json: @doctor, status: :created
    else
      render json: @doctor.errors, status: :unproccessable_entity
    end
  end

  def update
    @doctor = Doctor.find(params[:id])
    if @doctor.update(doctor_params)
      render json: @doctor
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
  end

  private

  def doctor_params
    params
      .require(:doctor)
      .permit(:name, :photo, :specialty, :bio)
  end
end
