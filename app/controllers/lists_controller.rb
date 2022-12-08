class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list) #à verifier
  end

  def new
    @list = List.new
  end


  def show
    @list
    @movie = Movie.new

  end

  def destroy
    @list.destroy
    redirect_to root_path
  end

  private
   def list_params
    params.require(:list).permit(:name)
   end

   def set_list
     @list = List.find(params[:id])
   end

end
