class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def new
    @superhero = Superhero.new
  end
  def create

    @superhero = Superhero.create(superhero_params)
    redirect_to @superhero

    #with validation: 
    # @superhero = Superhero.new(superhero_params)
    # if @superhero.valid?
    #   @superhero.save
    # else
    #   render 'new'
    # end
  end

  def show
    @superhero = Superhero.find(params[:id])
  end
  

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id, :superpower_id => [])

  end

end
