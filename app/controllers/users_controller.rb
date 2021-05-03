class UsersController < ApplicationController

  def login
    @user = User.find_by(email: params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash.now[:error] = 'Invalid email or password'
      render "./welcome/index"
    end
  end

  def show
  end

  def new
  end
end
