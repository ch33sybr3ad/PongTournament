class TournamentRound < ActiveRecord::Base

  def start_game
    @players = Player.all
    @players.each_slice(2).each do |pair|
      p pair
      # Game.create(pair)
    end


    # Game.create()
  end

end
