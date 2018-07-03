class Mentor < ApplicationRecord

  validates :name, :email, :expertise,  presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

  has_many :connections
  has_many :mentees, through: :connections

  def has_max_mentees
      self.mentees.count >= self.mentee_slots
   end
end
