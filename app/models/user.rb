class User < ApplicationRecord
  has_many :appointments
  has_many :doctors

  validates :name, presence: true
  validates :birth_date, presence: true
  validates :gender, presence: true
end
