class Game < ActiveRecord::Base

  has_many :players
  belongs_to :tournament_round

  def play_game(winner, loser)
    @winner = Player.find(winner).id
    self.winner = Player.find(winner).id
    @winner.win_count += 1
    self.loser = Player.find(loser).id
    #update win count
    self.save
  end


  def return_winner
    Player.find(self.winner)
  end

  def return_loser
    Player.find(self.loser)
  end

  def display_winner
    Player.find(self.winner).name
  end

  def display_loser
    Player.find(self.loser).name
  end

end
