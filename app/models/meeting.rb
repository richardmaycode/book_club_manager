class Meeting < ApplicationRecord
  enum venue: %w[ physical online hybrid ]

  belongs_to :club
  has_many :books, dependent: :destroy

  accepts_nested_attributes_for :books
end
