class Connection < ApplicationRecord
  belongs_to :mentee
  belongs_to :mentor
  has_many :events
  enum status: [:active, :closed]
end
