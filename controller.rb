require('json')
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/rock_paper_scissors_engine')

get '/' do
  erb(:index)
end

get '/play/:first/:second' do
  game = RockPaperScissors.new(params[:first].to_sym, params[:second].to_sym)
  @result = game.gameplay
  erb(:index)
end
