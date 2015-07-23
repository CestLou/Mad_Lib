require 'bundler'
require_relative 'models/funny.rb'
require_relative 'models/adventure.rb'
require_relative 'models/haunted.rb'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/funny_form' do
    @pos=Funny.new.pos
    erb :insert_words_funny
  end
    
  post '/funny_story' do
    params[:words]
    #user_input=params[:words]
    #@pos=Funny.new(user_input)
    #erb :funny_story
  end
   
#
#
  get '/adventure_form' do
    @pos=Adventure.new.pos
    erb :insert_words_adventure
  end
    
#   post '/adventure_story' do
#     user_input=params[:words]
#     @pos=Adventure.new(user_input)
#     erb :adventure_story
#   end
#
#
  get '/haunted_form' do
    @pos=Haunted.new.pos
    erb :insert_words_haunted
  end
  
#   post '/haunted_story' do
#     user_input=params[:words]
#     @pos=Haunted.new.pos(user_input)
#     erb :haunted_story
#   end

end