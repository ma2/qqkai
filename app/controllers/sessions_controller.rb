class SessionsController < ApplicationController
    def create
      user = User.authenticate_by_passkey(params[:user_id])
      if user
        sign_in(user)
        redirect_to root_path, notice: 'Logged in successfully'
      else
        redirect_to root_path, alert: 'Authentication failed'
      end
    end
  
    def destroy
      sign_out
      redirect_to root_path, notice: 'Logged out successfully'
    end
  
    private
  
    def sign_in(user)
      session[:user_id] = user.id
    end
  
    def sign_out
      session.delete(:user_id)
    end
  end