require 'sinatra'
require_relative 'game'
set :haml, :format => :html5

get '/clips/:exo' do |exo|
  filename = "#{exo}.mp3"
  filepath = File.join('./game/public/data/clips/', filename)
  File.open filepath
end

get '/play' do
  @game = Game.new( { 'limit': 20 } )
  @game.start!
  haml :play
end
