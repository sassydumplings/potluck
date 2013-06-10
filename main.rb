require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pry'


# 1. Establish a connection to the specific database we're using.
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'patsyprice', # Change the username to yours.
  :password => '',
  :database => 'potluck', # Make sure your new DB name matches.
  :encoding => 'utf8'
)

require_relative "models/tag"
require_relative "models/item"

# the routes for that class.
require_relative "controllers/tags"
require_relative "controllers/items"

get "/" do
  @tags = Tag.all

  erb :index
end

binding.pry