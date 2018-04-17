class Mentee < ApplicationRecord
  has_many :connections
  has_many :mentors, through: :connections
end
