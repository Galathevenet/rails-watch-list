class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(params_bookmark)
    @list = List.find(params[:list_id])


  end

  def params_bookmark
    params.require(:bookmark).permit(:comment)
  end
end
