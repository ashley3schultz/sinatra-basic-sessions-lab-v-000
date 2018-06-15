require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/' do
    params[:item]
    configure do
      enable :sessions
      set :session_secret, "secret"
    end
  end
end
