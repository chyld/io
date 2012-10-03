class BooksController < ApplicationController
  layout 'links'
  
  def index
    @books = Book.all
  end
  
  def new
    @book = Book.new
    render :action => 'edit'
  end
  
  def create
    Book.persist(params[:book])
    redirect_to books_path
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    Book.persist(params[:book])
    redirect_to books_path
  end
  
  def destroy
    book = Book.find(params[:id])
    book.delete if book.tags.count == 0
    redirect_to links_path
  end
end
