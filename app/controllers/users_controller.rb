class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      # redirect_to "/"
    else
      render 'new'
    end
  end

  def my_animaux
    @user = current_user
    @posts = @user.posts.all
    render '/posts/index'
  end

private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
