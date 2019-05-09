class AuthorsController < ApplicationController
  def index
    @authors = Author.all
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
    respond_to do |format|
        if @author.update(authors_params)
          format.html { redirect_to @author, notice: 'El autor ha sido correctamente actualizado.' }
          format.json { render :show, status: :ok, location: @estudiante }
        else
          format.html { render :edit }
          format.json { render json: @author.errors, status: :unprocessable_entity }
        end
    end
  end

  def delete
  end

  private

  def author_params
    params.fetch(:author, {}).permit(:first_name)
  end
end
