class Article
  include Mongoid::Document
  field :title, :type => String
  field :body, :type => String
  field :section, :type => String

  # belongs_to :game

  scope :tests, where(:section => 'test')
  scope :previews, where(:section => 'preview')
end
