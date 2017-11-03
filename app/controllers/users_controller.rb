class UsersController < ApplicationController
  def index
  end

  def new
  	    @user=User.new
  end

  def show
  	    @user = User.find(params[:id])

  end

  def create
  	@user = User.new(user_params)
    if @user.save
    
      redirect_to @user
    else
        render 'new'
        session[:current_user_id] = @user.id
    end
  end
  def user_params
    params.require(:user).permit(:name)
end
end
