class Game < ActiveRecord::Base
  has_many :discs
  has_many :compats
end
