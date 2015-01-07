class SessionsController < ApplicationController
  protect_from_forgery except: [:create, :destroy]

  def create
    cookies[:session_token] = 'ABC123'
    redirect_to '/'
  end

  def destroy
    cookies[:session_token] = nil
    redirect_to '/'
  end
end
