require 'sinatra/base'

class Battle < Sinatra::Base

  MAX_HP = 100

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect to('/play')
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:players)
  end

  get '/player_1_attacks' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:player_1_attacks)
  end

  run! if app_file == $0
end
