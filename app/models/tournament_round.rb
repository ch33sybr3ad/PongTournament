class TournamentRound < ActiveRecord::Base

  has_many :games

  def start_game
    @players = Player.all
    @players.each_slice(2).each do |pair|
      @game = Game.create()
      @game.players << pair
      self.games << @game
    end

    # Game.create()
  end

end
