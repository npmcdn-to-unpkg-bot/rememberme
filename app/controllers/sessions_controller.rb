class SessionsController < ApplicationController
  def new
  end

  def create
       user = User.find_by_email(params[:email].downcase)
       if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to root_url, notice: 'Logged In!'
       else
          render :new
       end # User Authentication
  end # Create Session

  def destroy
     session[:user_id] = nil
     redirect_to root_url, notice: 'Logged Out!'
  end
end
