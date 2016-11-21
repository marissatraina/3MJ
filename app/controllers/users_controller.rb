class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    new_user = user_params.merge({cohort: Cohort.find_by(name:params[:user][:cohort])})
    @user = User.new(new_user)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    find_user
  end

  private
    def find_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
