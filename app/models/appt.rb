class Appt < ApplicationRecord
  belongs_to :doc
  belongs_to :user

  validates :date, :time, presence: true
end

