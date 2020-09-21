class SessionsController < ApplicationController
    def new; end

    def create
        if session[:name]
            redirect_to '/'
        elsif params[:name] && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to '/'
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.delete :name if session[:name]
        redirect_to '/'
    end
end