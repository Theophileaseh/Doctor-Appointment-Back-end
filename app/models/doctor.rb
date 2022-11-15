class Doctor < ApplicationRecord
  has_many :appointments
  belongs_to :user

  validates :name, presence: true, length: { minimum: 3 }
  validates :photo, presence: true
  validates :specialty, presence: true
end
