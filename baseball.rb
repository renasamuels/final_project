require 'sinatra'
require 'sinatra/activerecord'

set :sessions, true
set :database, "sqlite3:updp.sqlite3"


get '/practice' do 
	erb :practice
	
end

post 'sign-in' do
	puts "my params are" + params.inspect
	@user = User.where(username: params[ :username]).first
	if @user.password== params[:password]
		redirect '/'
	else
		redirect '/login-failed'
	end
end

get '/' do
	"logged-in"
end

get '/' do
	"logged-in"
end

get '/login-failed' do
	"Failure!"
end