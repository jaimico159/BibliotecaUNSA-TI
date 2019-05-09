class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def edit
  end

  def new
    @book = Book.new
  end

  def show
  end

  def create
    #render plain: params[:book].inspect
    @book = Book.new(book_params)
    @book.save
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was succesfully created' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    @book.delete
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def book_params
    params.require(:book).permit(:name, :description)
    params.fetch(:book, {}).permit(:name)
  end
end
