class Game < ApplicationRecord
  has_many :user_games
  has_many :users, :through => :user_games
end



#
# has_many :appointments
# has_many :patients, :through => :appointments
