class Article < ActiveRecord::Base
  attr_accessible :body, :likes, :title, :game, :author

  belongs_to :game
  belongs_to :author, class_name: "User", foreign_key: :user_id
end
