class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  # def new
  #   @superpower = Superpower.new
  # end
  # def create
  #   @superpower = Superpower.create(superpower_params)
  # end
  def show
    @superpower = Superpower.find(params[:id])
  end
  

  private 

  def superpower_params
    params.require(:superpower).permit(:name, :description)

  end


end
