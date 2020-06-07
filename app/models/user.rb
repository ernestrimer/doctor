class User < ApplicationRecord
  has_many :appts
  has_many :docs, through: :appts

  validates :first_name, :last_name, :patient_num, presence: true
  validates :patient_num, uniqueness: true
  validates :first_name, :last_name, :patient_num, length: { minimum: 1 }
end