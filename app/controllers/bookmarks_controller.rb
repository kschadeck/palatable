class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    #params is the container with all the bookmarks
    #set params and get a bookmark object back
    @bookmark = Bookmark.new(params[:bookmark])
    if (@bookmark.save)
      redirect_to @bookmark
    else
      render 'new'
    end
  end

end
