class UsersController < ApplicationController
  def index
  end

  def edit
    @user = User.find(params[:id])
  end
 
  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to(:action =>'index')
  end

  def show
  end

  def new
    @user = User.new
  end
 
  def create
    @user = User.new(user_params)
    @user.save
    redirect_to(:action => 'index')
  end

  def delete
    @user = User.find(params[:id])
  end
 
 
  def destroy
    @user = Task.find(params[:id])
    @user.destroy
    redirect_to(:action => 'index')
  end

  private

  def user_params
    params.fetch(:user, {}).permit(:first_name, :last_name, :phone, :email, :encrypted_password)
  end
end
