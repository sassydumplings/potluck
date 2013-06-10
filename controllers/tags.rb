# add a new object
get "/new_tag" do
  erb :"tags/new_tag"
end

post "/new_tag" do
  @tag = Tag.create(params[:tag])
  redirect "/"
end

# edit a tag
get '/edit_tag/:tag_id' do
  @tag = Find.find_by_id(params[:tag])
  erb :"tags/edit_tag"
end

post '/edit_tag' do
  @tag = Programmer.find_by_id(params[:tag][:id])
  @tag.update_attributes(params[:tag])
  redirect "/"
end

# delete a user

get '/delete_tag/:tag_id' do
  @tag = Tag.find_by_id(params[:tag_id])
  @tag.destroy
  redirect "/"
end