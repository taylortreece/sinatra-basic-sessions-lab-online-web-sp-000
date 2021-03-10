require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :session
        set :sessions_secret, SecureRandom.hex(64)
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        @item=params[:item]
        session[:item]=params[:item]

        erb :cart
    end
end