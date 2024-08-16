require 'sinatra/base'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require_relative 'app/import_from_csv'
require_relative 'models/medical_examination'

set :port, 3000
set :database, {adapter: "sqlite3", database: "rebase_labs.sqlite3"}

get '/' do
  erb :index
end

get '/test' do
  ImportFromCSV.new.import_table('./csv/data.csv')
  "Informações sendo salvas... #{me.id}"
end
