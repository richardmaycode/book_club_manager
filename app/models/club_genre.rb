class ClubGenre < ApplicationRecord
  belongs_to :club
  belongs_to :genre
end
