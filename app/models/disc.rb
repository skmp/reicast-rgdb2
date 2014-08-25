class Disc < ActiveRecord::Base
  belongs_to :game
  has_many :videos
end
