class Doc < ApplicationRecord
  has_many :appts
  has_many :users, through: :appts

  validates :dr_name, :dr_num, presence: true
  validates :dr_num, uniqueness: true
  validates :dr_name, :dr_num, length: { minimum: 1 }

  
end
