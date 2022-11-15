class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments
  has_many :doctors
  before_validation :default_values

  validates :name, presence: true
  validates :birth_date, presence: true
  validates :gender, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true

  def default_values
    self.role = 'normal' if role.nil?
  end
end
