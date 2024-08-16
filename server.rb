require 'sinatra/base'
require 'sinatra'
# Recarrega a página automaticamente
require 'sinatra/reloader'
require 'sinatra/activerecord'
# require_relative 'models/user'

set :port, 3000

# class Stitcher < Sinatra::Base
  get '/' do
    erb :index
  end

  # run! if app_file == $PROGRAM_NAME
# end
