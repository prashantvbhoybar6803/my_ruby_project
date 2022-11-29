class SignupController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User created successfully."
      render json:{
        data: @user,
        status: 200
      }
    else
      flash[:error] = "Somwthing went wrong."
      render json:{
        data: nil,
        status: 404
      }
    end
  end

  private

  def user_params;
    params.require(:user).permit(:first_name,:last_name,:email,:password,:password_confirmation)
  end

end
