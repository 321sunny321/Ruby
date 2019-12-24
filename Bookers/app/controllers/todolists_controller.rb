class TodolistsController < ApplicationController

  def new
  	@book = Book.new
  end

  def create
  	book = Book.new(list_params)
    if book.save
      flash[:notice] = "Book was successfully created."
  	redirect_to todolist_path(book.id)
  else
    @books = Book.all
    flash[:error] = "error"
     render action: :index

  end

  end

  def index
  	@books = Book.all
  end

  def show
  	@book = Book.find(params[:id])
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
	book = Book.find(params[:id])
	if book.update(list_params)
	redirect_to todolist_path(book.id), notice: "Book was successfully updated."
else
  render action:edit
  end
  end

  def destroy
  book = Book.find(params[:id])
	book.destroy
	redirect_to todolists_path , notice: "Book was successfully destroyed."
  end
private

def list_params
	params.require(:book).permit(:title, :body)
end



end
