get '/' do
  erb :home
end

get '/start_game' do
  Tournament.create()
  Tournament.first.start_game
end

get '/play_game/:round_number' do
  @players = Tournament.next_round(params[:round_number])
  #display all players in current round with name and id
  #allow options list with submit form

  # erb :play
end

post '/play_game' do
  # update all games by ID and given options
  # iterate through given ID's and make the updates through play_game
end
