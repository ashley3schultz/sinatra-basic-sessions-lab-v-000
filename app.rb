require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/hey' do
    @session = session
  end

  get '/' do
    erb :index
  end

  post '/' do
    params[:item]
     session["name"] = params[:item]

  end
end
