# my_app.rb
require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base


  # enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params['player_1'])
    $player_2 = Player.new(params['player_2'])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    @action = params['action']
    if @action == "attack"
      @player_1.attack(@player_2, 10)
    end
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
