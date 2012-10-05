class BooksController < ApplicationController
  layout 'arc'
  def new
    @book = Book.new
  end
  
  def create
    Book.persist(params[:book])
    redirect_to books_path
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    Book.persist(params[:book])
    redirect_to books_path
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def index
    @books = Book.all
  end
end
