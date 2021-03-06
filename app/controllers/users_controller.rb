require 'rack-flash'

class UsersController < ApplicationController
    use Rack::Flash
    
    get '/signup' do
        erb :'/users/signup'
    end

    post '/signup' do
        user = User.new(name: params[:name], email: params[:email], password: params[:password])

        # if !user.valid?
        if params[:name] == "" || params[:email] == "" || params[:password] == "" || User.find_by(email: params[:email])
            error = ""
            user.errors.messages.each do |key, value|
            error << "#{key.to_s.capitalize}: #{value.join}\n"
            end
            flash[:message] = error
            redirect '/signup'
        else
            user.save
            session[:user_id] = user.id
            redirect '/lists'
        end
        
    end

    get '/login' do
        erb :'/users/login'
    end

    post '/login' do
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect '/lists'
        else
            flash[:message] = "Login failed: invalid email or password"
            redirect '/login'
        end
        
    end

    get '/logout' do
        if logged_in?
            session.clear
            redirect '/login'
        end
        redirect '/'
    end

    get '/users/:id' do
        if !logged_in?
            redirect '/lists'
        end
        @user = User.find_by_id(params[:id])
        redirect_if_not_user
        erb :'/users/show'
    end

    get '/users' do
        if !logged_in?
            redirect '/lists'
        end
        redirect "/users/#{current_user.id}"
    end

    private
    def redirect_if_not_user
        if @user != current_user
            redirect '/lists'
        end
    end

end