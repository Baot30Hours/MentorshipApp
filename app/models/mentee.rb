
class Mentee < ApplicationRecord

	validates :name, :email, :expertise,  presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  	has_many :connections
		has_many :mentors, through: :connections
		
	def new_connection_path
		"/connections/new?mentee_id=" + id.to_s
	end

	before_create do
		self.date_created = Time.now
	end
end
