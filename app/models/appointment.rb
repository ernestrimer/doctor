class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :Doc
end
