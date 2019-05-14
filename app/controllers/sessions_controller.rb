class SessionsController < ApplicationController
  def new
    #nothing here at the moment
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name].nil?
      session[:name]
    else
      session.destroy
    end
  end
end
