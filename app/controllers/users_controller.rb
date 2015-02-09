class UsersController < ApplicationController
skip_before_action :verify_authenticity_token

  def new
    render partial: 'new'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render :js => "window.location = '/'"
    else
      render 'new'
    end
  end

  def my_animaux
    @user = current_user
    @posts = @user.posts.all
    render '/posts/index'
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:user_id] = nil
    redirect_to '/'
  end

private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
