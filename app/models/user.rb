class User < ApplicationRecord
  has_many :memberships, dependent: :destroy

end
