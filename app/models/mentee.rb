class Mentee < ApplicationRecord

	validates :name, :email, :expertise,  presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  	has_many :connections
  	has_many :mentors, through: :connections
end
