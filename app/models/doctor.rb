class Doctor < ApplicationRecord
  has_many :appointments

  validates :name, presence: true
  validates :photo, presence: true
  validates :specialty, presence: true
end
