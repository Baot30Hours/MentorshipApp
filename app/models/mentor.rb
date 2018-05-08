class Mentor < ApplicationRecord
  has_many :connections, dependent: :destroy
  has_many :mentees, through: :connections

  validates :name, presence: true,
             length: { minimum: 5 }
end