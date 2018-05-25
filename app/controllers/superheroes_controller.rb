class SuperheroesController < ApplicationController
  
	before_action :find_superhero, only: [:show]
  def index
    @superheroes = Superhero.all
    if params[:search] && params[:search] != ""
      @superheroes = Superhero.search(params[:search]).order("created_at DESC")
    else
      @superheroes = Superhero.all.order("created_at DESC")
    end
  end

  def show

  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new
    @superhero.attributes = hero_params
    if @superhero.valid?
      @superhero.save
      redirect_to(superhero_path(@superhero))
    else
      render :new
    end
  end

  private

  def find_superhero
  	@superhero = Superhero.find(params[:id])
  end

  def hero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
