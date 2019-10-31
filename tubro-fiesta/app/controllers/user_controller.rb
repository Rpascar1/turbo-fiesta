class UserController < ApplicationController

 get "/users/:id" do #show
  if @user = User.find(params[:id])
   erb "users/show"
  else
   redirect '/'
  end
 end

get '/singup' do
    erb "users/signup" #new
end

post "/signup" do
  if params[:username] && params[:password]
    @user = User.create(params)
    session[:user_id] = @user.id

  erb "users/show" #redirect to has many model
end
end

get '/login' do

  erb '/users/login'
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user && @user.autheticate(params[:password])
    session[:user_id] = @user.id
     #redirect to has many model
  end
end

get '/logout' do
  session.clear
  rediect "/"
end


end
