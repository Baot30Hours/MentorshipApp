class Connection < ApplicationRecord
  belongs_to :Mentee
  belongs_to :Mentor
  has_many :events, dependent: :destroy
end
