class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    @list.save
    # No need for app/views/restaurants/create.html.erb
    redirect_to lists_path #à verifier
  end

  def new
    @list = List.new
  end


  def show
    @list = List.find(set_list)
  end

  def destroy
    @list.destroy
  end

  private
   def list_params
    params.require(:list).permit(:name)
   end

   def set_list
     @list = List.find(params[:id])
   end

end
