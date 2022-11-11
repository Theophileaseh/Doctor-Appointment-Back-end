class Api::V1::DoctorsController < Api::V1::BaseController
  def index
    render json: Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor
  end

  def new
    Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to @doctor,
                  notice: 'A new Doctor was added successfully.'

    else
      render :new, alert: 'Failed to add a new Doctor'
    end
  end

  def doctor_params
    params
      .require(:doctor)
      .permit(:name, :photo, :specialty, :bio)
  end
end
