class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  has_many :user_games
  has_many :games, :through => :user_games
  accepts_nested_attributes_for :games
end
