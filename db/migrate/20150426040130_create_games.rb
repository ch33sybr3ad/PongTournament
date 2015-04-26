class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :winner
      t.string :loser
      t.integer :tournament_round_id

      t.timestamps
    end
  end
end
