class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	  @user = User.new(user_params)
    if @user.save
    	log_in @user
    	flash[:success] = "Bienvenue dans l'univers infini !"
      redirect_to @user
    else
      render 'new'
    end
  end

def show
end

  def edit
  	@user = User.find(params[:id])
  end

  def destroy
  end

  private

    def user_params
      params.require(:user).permit(:email, :password,
                                   :password_confirmation)
    end
end
