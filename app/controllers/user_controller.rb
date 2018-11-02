class UserController < ApplicationController
  def home

  end

  def login

  end

  def logout
    session[:user_id] = nil
    flash[:info] = "Tu as été déconnecté"
  end

  def check
    @current_user = User.where(name: params["/users/login"][:name], password: params["/users/login"][:password]).first
    if @current_user
      session[:user_id] = @current_user.id
      flash[:info] = "Tu es connecté en tant que #{@current_user.name} !"
      redirect_to "/gossip/index"
    else
      session[:user_id] = nil
      flash[:info] = "Échec de la connexion"
      redirect_to "/user/login"
    end
  end
end