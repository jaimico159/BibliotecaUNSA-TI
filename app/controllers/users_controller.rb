class UsersController < ApplicationController
  def index
  end

  def edit
  end

  def show
  end

  def new
  end

  def create
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
