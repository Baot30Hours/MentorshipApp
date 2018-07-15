class Mentor < ApplicationRecord
  has_many :connections
  has_many :mentees, through: :connections

  validates :name, :email, :expertise,  presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :available_mentee_slots, numericality: { greater_than: 0, message: "mentor has no available slots" }

  def has_max_mentees
      self.mentees.length >= self.mentee_slots
  end

  def available_mentee_slots
  	self.mentee_slots - (self.connections.select { |connection| connection.status == 'active'}).count
  end
end
