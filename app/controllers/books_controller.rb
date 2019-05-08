class BooksController < ApplicationController
  def index
  end

  def edit
  end

  def new
  end

  def show
  end

  def create
  end

  def update
  end

  def delete
  end

  private

  def book_params
    params.fetch(:book, {}).permit(:name)
  end
end
