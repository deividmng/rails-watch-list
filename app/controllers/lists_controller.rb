class ListsController < ApplicationController

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @list = List.new
  end


# aqui es para ensenar tola la lista de las peliculas
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name) # Aquí debes incluir todos los atributos permitidos
  end

end
