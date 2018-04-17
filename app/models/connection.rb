class Connection < ApplicationRecord
  belongs_to :Mentee
  belongs_to :Mentor
end
