class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
  def set_list
      @list = List.find(params[:id])
  end
    # Only allow a trusted parameter "white list" through.
  def list_params
      params.require(:list).permit(:name)
  end
end
