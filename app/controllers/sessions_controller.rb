class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "Welcome back #{user.email}"
      remember user
      redirect_to secret_path
    else
      flash.now[:danger] = "Tu n'as pas accès au secret, ton email/password n'est pas valide !"
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
  end
end
