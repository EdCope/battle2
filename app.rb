require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  
  get '/' do
    erb(:index)
  end
    
  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/names' do 
    player_1 = Player.new(params["player_1"])
    player_2 = Player.new(params["player_2"])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end
  
  get '/attack' do
    @game = $game
    @game.attack(@game.attacked_first)
    erb :attack  
  end

  run! if app_file == $0

end
