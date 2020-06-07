class User < ApplicationRecord
  has_many :appts, dependent: :destroy
  has_many :docs, through: :appts

  validates :first_name, :last_name, :patient_num, presence: true
  validates :patient_num, uniqueness: true
  validates :first_name, :last_name, :patient_num, length: { minimum: 1 }

  def full_name
    "#{self.first_name} #{self.last_name} (aka: #{self.patient_num})"
  end
end