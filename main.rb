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

binding.pry

require_relative "models/tag"
require_relative "models/item"
require_relative "models/person"
require_relative "models/potluck"

binding.pry

get "/" do

  redirect "/potlucks"
end


#list all potlucks
get "/potlucks" do

  @potlucks = Potluck.all
  erb :view_potlucks
end

#create potlucks
get "/potluck/new" do
  erb :create_potluck
end

post "/potluck/new" do
  @potluck = Potluck.create(params[:potluck])
  @redir = "/potluck/#{@potluck.id}"  #copied this .. need to understand this latr
  redirect @redir
end

#  delete potluck and  relations
post "/potluck/destroy" do

  Potluck.destroy(params[:id])
  redirect "/potlucks"

end

get "/potluck/:id" do

  @potluck = Potluck.find(params[:id])
  erb :show_potluck

end

# add an item
get "/potluck/:p/add_item" do

  @potluck = Potluck.find(params[:p])
  @tags = Tag.all

  erb :add_item
end

post "/potluck/:p/add_item" do

  @item = Item.create(params[:item])

  @redir = "/potluck/#{params[:p]}"

  redirect @redir
end
