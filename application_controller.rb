require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/funny_form' do
    @pos=Funny.new.pos
    erb :inser_word_funny
  end

end