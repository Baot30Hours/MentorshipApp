class Mentor < ApplicationRecord
  has_many :connections
  has_many :mentees, through: :connections
end