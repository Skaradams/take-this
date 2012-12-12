class Article < ActiveRecord::Base
  attr_accessible :body, :likes, :title
end
