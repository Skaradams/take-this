class Game < ActiveRecord::Base
  attr_accessible :released_on, :title, :articles

  has_many :articles
end
