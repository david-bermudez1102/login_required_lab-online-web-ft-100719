class SessionsController < ApplicationController

    def new
    end

    def create
        if !params[:name] || params[:name]==""
            redirect_to "/login"
        else
            session[:name] = params[:name]
            redirect_to "/"
        end
    end

    def destroy
        if session[:name]
            session.clear
            redirect_to "/login"
        end
    end
end
