class Membership < ApplicationRecord
  enum status: %w[active inactive retired]
  enum role: %w[admin contributor member follower]

  belongs_to :club
  belongs_to :user
  has_many :books

end
