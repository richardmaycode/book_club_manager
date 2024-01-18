class Book < ApplicationRecord
  belongs_to :meeting
  has_one :club, through: :meet_up
  belongs_to :membership, required: false
  has_one :user, through: :membership

  def read_in_release_year
    year_read == publication_year
  end

  def read_within_five_years_publication
    year_read == publication_year
  end

  def classic_read
    (year_read - publication_year) >= 30
  end

  private

  def year_read
    meeting.scheduled.year
  end
end
