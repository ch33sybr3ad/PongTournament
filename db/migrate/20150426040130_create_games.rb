class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :winner
      t.integer :loser
      t.belongs_to :tournament_round


      t.timestamps
    end
  end
end
