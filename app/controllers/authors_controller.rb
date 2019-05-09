class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def edit
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author= Author.new(first_name: params[:author][:first_name],
    last_name: params[:author][:last_name])
    if @author.save
      redirect_to @author
    else
      render :new
    end
    
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
