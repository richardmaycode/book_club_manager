class Genre < ApplicationRecord
  belongs_to :category
  has_many :club_genres
end
