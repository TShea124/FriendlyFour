class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/courses"
    else
      redirect_to "/"
    end
  end

  # def edit
  #   @user = current_user
  # end

  # def update
  #   @user = User.find(params[:id])
  #   if @user.update_attributes(user_params)
  #     # Handle a successful update.
  #   else
  #     render 'edit'
  #   end
  # end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
