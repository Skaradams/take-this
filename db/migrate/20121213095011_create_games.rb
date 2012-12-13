class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.date :released_on

      t.timestamps
    end
  end
end
