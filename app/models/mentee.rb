class Mentee < ApplicationRecord
  has_many :connections, dependent: :destroy
  has_many :mentors, through: :connections
end
