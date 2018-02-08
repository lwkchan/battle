require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

  MAX_HP = 100

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    # player 1's turn = true
    erb(:players)
  end

    # rename to /attack
    # player_1's turn = true
    # attacker = @player_1
    # defender = @player_2
    #
    # player_1's turn = false
    # attacker = @player_2
    # defender = @player_1
  post '/player_1_attacks' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $game.attack(@player_2)
    erb(:player_1_attacks)
    # player 1's turn = false
  end

  post '/player_2_attacks' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $game.attack(@player_1)
    erb(:player_2_attacks)
  end


  run! if app_file == $0
end
