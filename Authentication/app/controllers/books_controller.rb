class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def new
  end

  def create
    @book = Book.new(name: params[:name], price: params[:price], author: params[:author])
    @book.save

    redirect_to "/books/#{@book.id}"
  end

  def edit
    @book = Book.find_by(id: params[:id])
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.assign_attributes(name: params[:name], price: params[:price], author: params[:author])

    redirect_to "/books/#{@book.id}"
  end

  def destroy
    book = Book.find_by(id: params[:id])
    book.destroy

    redirect_to "/books"
  end
end
