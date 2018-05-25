class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
    
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    @superhero.save
    if superhero.valid?
     redirect_to superhero_path(@superhero)
    else
      render 'new'
    end
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
