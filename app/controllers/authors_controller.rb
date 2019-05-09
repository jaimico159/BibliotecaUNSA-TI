class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def edit
  end

  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    @author.save
    respond_to do |format|
      if @author.save
        format.html { redirect_to @author, notice: 'Author was succesfully created' }
        format.json { render :show, status: :created, location: @author }
      else
        format.html { render :new }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @author.update(author_params)
        format.html { redirect_to @author, notice: 'Author was successfully updated.' }
        format.json { render :show, status: :ok, location: @author }
      else
        format.html { render :edit }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    @author.delete
    respond_to do |format|
      format.html { redirect_to authors_url, notice: 'Author was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def author_params
    params.fetch(:author, {}).permit(:first_name)
  end
end
