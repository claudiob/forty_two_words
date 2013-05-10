class SessionsController < ApplicationController
  def create
    session[:logged_in] = true
    redirect_to words_path, notice: 'Logged in!'
  end
  
  def destroy
    session[:logged_in] = false
    redirect_to welcome_path, notice: 'Logged out!'
  end
end
