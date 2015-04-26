class CreateTournamentRounds < ActiveRecord::Migration
  def change
    create_table :tournament_rounds do |t|
      t.integer :number_of_players
      t.string :games_in_progess

      t.timestamps
    end
  end
end
