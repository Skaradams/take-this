p "Destroying all records"
[Article, Game, User].each { |m| m.destroy_all}

p "Creating users"
users = %w(Joe William Jack Averell).map do |name|
  p "****creating #{name}"
  u = User.create name: name, email: "#{name}@gmail.com", password: "toto123", password_confirmation: "toto123"
end

p "Creating games"
games = ['Super mario bros', 'The legend of Zelda'].map do |title|
  p "**** creating #{title}"
  Game.create title: title, released_on: Date.today - 5.years
end

p "Creating articles"
games.each do |game|
  adjectives = %w(cool nul moyen fantastique)
  (1..5).each do |i|
    p "**** creating #{game.title} : article#{i}"  
    Article.create title: "Article-#{i}", body: "#{game.title} c'est #{adjectives.sample}", likes: rand(1000), game: game, author: users.sample
  end
p "Done"
end