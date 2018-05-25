class SuperpowersController < ApplicationController
  
	before_action :find_superpower, only: [:show]
  def index
    @superpowers = Superpower.all
  end

  def show

  end

  private

  def find_superpower
  	@superpower = Superpower.find(params[:id])

  end
end
