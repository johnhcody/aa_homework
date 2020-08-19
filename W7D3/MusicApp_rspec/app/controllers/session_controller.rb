class SessionController < ApplicationController

    before_action :ensure_logged_in, only: [:delete]

    def new
        render :new
    end

    def create
        user = User.find_by_credentials(
            params[:user][:username],
            params[:user][:password]
        )

        if user
            log_in_user!(user) 
            redirect_to users_url
        else
            flash.now[:errors] = ["Incorrect username and/or password"]
            render :new
        end
    end

    def destroy
        current_user.log_out!
        redirect_to new_session_url
    end



end
