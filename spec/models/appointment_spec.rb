require 'rails_helper'

RSpec.describe Appointment, type: :model do
  before(:all) do
    @user = User.create(
      email: 'mail@test.com',
      password: '0101010101',
      name: 'Test User',
      birth_date: '01-04-1992',
      gender: 'f'
    )

    @doctor = Doctor.create(
      name: 'Test User',
      photo: 'https://testimage.url',
      specialty: 'therapist',
      bio: 'Test Doctor Biography'
    )
  end

  describe('associations') do
    it { should belong_to(:doctor) }
    it { should belong_to(:user) }
  end

  describe 'test valid cases' do
    before(:each) do
      @appointment = described_class.create(
        user_id: @user.id,
        doctor_id: @doctor.id,
        time_of_appointment: '01:00:00',
        day_of_appointment: '2000-02-01',
        message: 'Test appointment'
      )
    end

    it 'Should contain user and doctor IDs' do
      expect(@appointment.user_id).to eq(@user.id)
      expect(@appointment.doctor_id).to eq(@doctor.id)
    end

    it 'Should contain time and day' do
      expect(@appointment.time_of_appointment).to eq('2000-01-01 01:00:00.000000000 +0000')
      expect(@appointment.day_of_appointment.to_s).to eq('2000-02-01')
      expect(@appointment.message).to eq('Test appointment')
    end
  end

  it 'Should be invalid' do
    appointment = Appointment.create(user_id: 1, message: 'Hi Test', day_of_appointment: '2022-01-04',
                                     time_of_appointment: '12:00:00')
    appointment_2 = Appointment.create
    appointment_3 = Appointment.create(user_id: -3, doctor_id: -1, message: 'Hi Test again',
                                       day_of_appointment: '2022-01-04', time_of_appointment: '12:00:00')

    expect(appointment).to_not be_valid
    expect(appointment_2).to_not be_valid
    expect(appointment_3).to_not be_valid
  end
end
