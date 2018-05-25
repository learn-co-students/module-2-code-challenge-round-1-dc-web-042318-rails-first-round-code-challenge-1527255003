class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def new
    @superpower = Superpower.new
  end

  def create
    @superpower = Superpower.new(superpower_params)
    @superpower.save
    if superpower.valid?
      redirect_to superpower_path(@superhero)
    else
      render 'new'
    end
  end

  def show
    @superpower = Superpower.find(params[:id])
  end


  private

  def superpower_params
    params.require(:superpower).permit(:name, :description)
  end
end
