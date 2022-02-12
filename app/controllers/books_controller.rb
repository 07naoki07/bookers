class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def create
   book = Book.new(book_params)
   book.save
   redirect_to book_path(book.id)
  end
   
  def show
    @book = Book.find(paramas[:id])
  end

  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
