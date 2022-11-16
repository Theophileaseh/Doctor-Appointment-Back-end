require 'rails_helper'

RSpec.describe User, type: :model do

  before(:all) do
    @user = User.create(
      email: 'test@mail.com',
      password: 'hgdu47sk',
      name: 'Superman', 
      birth_date: '04-05-2000',
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
  end


  describe('associations') do
    it { should have_many(:appointments) }
    it { should have_many(:doctors) }
  end
end
