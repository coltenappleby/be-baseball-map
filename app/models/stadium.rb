class Stadium < ApplicationRecord
  belongs_to :city

  # Need to be able to get the stadium name
end
