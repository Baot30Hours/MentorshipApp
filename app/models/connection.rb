class Connection < ApplicationRecord
  belongs_to :mentee
  belongs_to :mentor
  has_many :events
  enum status: [:active, :closed]
  validates :mentor, uniqueness: { scope: :mentee, message: ": connection already exists" }
  validates :mentee, uniqueness: { scope: :mentor, message: ": connection already exists" }
  validates_associated :mentor, {message: ": mentor has no available slots" }
  
  def last_updated
  	if (self.events.empty?)
  		self.updated_at
  	else
  		return self.events.sort_by(&:created_at).first.updated_at
   end
  end

  def display_name
    self.mentor.name + " <> " + self.mentee.name
  end

end
