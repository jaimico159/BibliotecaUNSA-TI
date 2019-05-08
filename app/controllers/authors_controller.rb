class AuthorsController < ApplicationController
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

  def author_params
    params.fetch(:author, {}).permit(:first_name)
  end
end
