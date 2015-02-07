class SessionsController < ApplicationController
  # respond_to :html, :js


  def new
    # puts 'arrived'
    #render 'new'
  end

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      session[:user_id] = @user.id
      # redirect_to "/"
    else
      flash.now.alert = "Invalid email or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end

end
