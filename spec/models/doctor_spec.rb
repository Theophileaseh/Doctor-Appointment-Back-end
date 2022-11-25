require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe('associations') do
    it { should belong_to(:user) }
    it { should have_many(:appointments) }
  end

  describe 'should be invalid' do
    it 'can\'t be created without arguments' do
      doctor = Doctor.create
      expect(doctor).to_not be_valid
    end

    it 'can\'t be created without arguments' do
      doctor = Doctor.create
      expect(doctor).to_not be_valid
    end

    it 'expect name to not be less than 3 characters length' do
      doctor = Doctor.create(name: 'as', photo: 'img.test.com', specialty: 'some', bio: 'test bio')
      expect(doctor).to_not be_valid
    end
  end
end
