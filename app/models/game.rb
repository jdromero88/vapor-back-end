class Game < ApplicationRecord
  has_many :user_games
  has_many :users, :through => :user_games
  validates :api_id, uniqueness: true
end



#
# has_many :appointments
# has_many :patients, :through => :appointments
