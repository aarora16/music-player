class SessionsController < ApplicationController
    def create
        @user = User.find_by(username: user_params[:username])

        if @user && @user.authenticate(user_params[:password])

            payload = { user_id: @user.id }
            token = JWT.encode(payload,'Jingle')

            render json: { auth_key: token }, :status => :ok
        else
            render json: { :msg => "Login failed.." }, :status => :ok
          end
    end
      
    private
    def users_params
         params.require(:user).permit(:username,:password)
    end
      
end