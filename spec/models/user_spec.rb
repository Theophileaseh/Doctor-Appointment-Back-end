require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = User.create(
      email: 'test@mail.com',
      password: 'hgdu47sk',
      name: 'Superman',
      birth_date: '2000-05-04',
      gender: 'f'
    )
  end

  describe 'Should be created with valid arguments' do
    it 'name to equal "Superman"' do
      expect(@user.name).to eq('Superman')
    end

    it 'gender to not be "m"' do
      expect(@user.gender).to_not eq('m')
    end

    it 'birth_day to be "04-05-2000"' do
      expect(@user.birth_date.to_s).to eq('2000-05-04')
    end

    it 'email to be "test@mail.com"' do
      expect(@user.email).to eq('test@mail.com')
    end

    it 'password to be "hgdu47sk"' do
      expect(@user.password).to eq('hgdu47sk')
    end
  end

  # Should correspond associations set
  describe('associations') do
    it { should have_many(:appointments) }
    it { should have_many(:doctors) }
  end

  describe 'Should not be valid' do
    it 'Should contain arguments' do
      expect(User.create).to_not be_valid
    end

    it 'Name should be at least 3 characters long' do
      expect(User.create(
               email: 'test@mail.com',
               password: 'hgdu47sk',
               name: 'S',
               birth_date: '2000-05-04',
               gender: 'f'
             )).to_not be_valid
    end

    it 'Email should be of proper format' do
      expect(User.create(
               email: 'my email',
               password: 'hgdu47sk',
               name: 'S',
               birth_date: '2000-05-04',
               gender: 'f'
             )).to_not be_valid
    end
  end
end
