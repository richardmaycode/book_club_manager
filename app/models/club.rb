class Club < ApplicationRecord
  enum status: %w[ active, inactive, archived ]

  has_many :club_categories, dependent: :destroy
  has_many :club_genres, dependent: :destroy
  has_many :club_reading_levels, dependent: :destroy
  has_many :categories, through: :club_categories
  has_many :genres, through: :club_genres
  has_many :reading_levels, through: :club_reading_levels
  has_many :meetings, dependent: :destroy
  has_many :books, through: :meetings
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships

  def admins
    users.where(id: memberships.admin.pluck(:id))
  end

  def contributors
    users.where(id: memberships.contributor.pluck(:id))
  end

  def members
    users.where(id: memberships.member.pluck(:id))
  end

  def followers
    users.where(id: memberships.follower.pluck(:id))
  end
end
