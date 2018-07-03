class Mentor < ApplicationRecord
  has_many :connections
  has_many :mentees, through: :connections

  def has_max_mentees
      self.mentees.count >= self.mentee_slots
   end
end
