class TournamentRound < ActiveRecord::Base

  has_many :games

  def start_game
    @players = Player.all
    @players.each_slice(2).each do |pair|
      @game = Game.create()
      @game.players << pair
      self.games << @game
    end
  end

  def next_round(round_number)
    @players = Player.where(win_count: round_number - 1)
    @players.each_slice(2).each do |pair|
      @game = Game.create()
      @game.players << pair
      self.games << @game
    end
  end


end
