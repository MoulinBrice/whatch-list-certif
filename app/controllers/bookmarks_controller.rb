class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :destroy]

  def index
    @bookmarks = Bookmark.all
  end

  def create
    #ajouter la recherche de la list
    @bookmark = Bookmark.new
    @bookmark.save
    # No need for app/views/restaurants/create.html.erb
    redirect_to bookmark_path
  end

  def new
    @bookmark = Bookmark.new
  end

  def destroy
    @bookmark.destroy
    redirect_to lists_path #vérifier la redirection
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:comment)
   end

   def set_bookmark
     @bookmark = Bookmark.find(params[:id])
   end
end
