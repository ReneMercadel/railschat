class Room < ApplicationRecord
  # This allows the list of available rooms to update live from a user's view without refreshing
  broadcasts_to ->(room){:rooms_list}
end
