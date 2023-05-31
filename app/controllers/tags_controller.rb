class TagsController < ApplicationController
  def search
    @model = Book
    @word = params[:word]
    @books = Book.where("#{word}")
    render 'searches/result'
  end
end
