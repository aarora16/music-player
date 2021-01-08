class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.valid?
      @user.save

      payload = { user_id: @user.id }
      token = JWT.encode(payload,'Jingle')

      render json: { auth_key: token }, :status => :ok
    else
      render json: { :msg => "User not found"}
    end
  end
  
  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user
    else 
      render json: { message: 'User not found' }
    end
  end

  private
  def user_params
    params.require(:user).permit(:username,:password)
  end
  end
