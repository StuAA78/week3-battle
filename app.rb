# my_app.rb
require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base


  # enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params['player_1']), Player.new(params['player_2']))
    redirect '/play'
  end

  get '/play' do
    @action = params['action']
    if @action == "attack"
      $game.attack($game.attacker, $game.defender, 10)
    end
    $game.switch_players
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
