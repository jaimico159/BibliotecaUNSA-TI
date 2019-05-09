class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def edit
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def update
  end

  def delete
  end

  private

  def user_params
    params.fetch(:user, {}).permit(:first_name, :last_name, :email)
  end
end
