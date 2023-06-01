class TagsController < ApplicationController
  def search
    @model = Book
    @word = params[:content]
    @books = Book.where("tag LIKE?","%#{@word}%")
    render "search"
  end
end
