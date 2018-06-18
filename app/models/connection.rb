class Connection < ApplicationRecord
  belongs_to :mentee
  belongs_to :mentor
end
