class ListsController < ApplicationController

    get '/lists' do
        @lists = List.all
        erb :'/lists/index'
    end

    get '/lists/new' do
        redirect_if_not_logged_in
        erb :'/lists/new'
    end

    post '/lists' do
        redirect_if_not_logged_in

        @list = List.create(name: params[:name], description: params[:description], to_do: params[:to_do], image: params[:image])
        redirect "/lists/#{@list.id}"
    end

    get '/lists/:id' do
        @list = List.find_by_id(params[:id])
        erb :'/lists/show'
    end

    get '/lists/:id/edit' do
        redirect_if_not_logged_in
        
        @list = List.find_by_id(params[:id])
        redirect_if_not_creator
        erb :'/lists/edit'
    end

    patch '/lists/:id' do

        redirect_if_not_logged_in

        @list = List.find_by_id(params[:id])
        redirect_if_not_creator
        if params[:name] == ""
            redirect "/lists/#{params[:id]}/edit"
        end
        @list.update(name: params[:name], description: params[:description], to_do: params[:to_do], image: params[:image])
        @list.save
        redirect "/lists/#{@list.id}"
        
    end

    post '/lists/:id/delete' do
        redirect_if_not_logged_in

        @list = List.find_by_id(params[:id])
        redirect_if_not_creator
        @list.delete
        redirect '/lists'
    end

    private

    def redirect_if_not_logged_in
        if !logged_in?
            redirect '/login'
        end
    end

    def redirect_if_not_creator
        if @list.user != current_user
            redirect '/lists'
        end
    end

end