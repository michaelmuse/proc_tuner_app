class MusiciansController < ApplicationController

  def new
    
  end

  def create
    new_musician = Musician.create(name: params[:name])
    redirect_to musicians_path
  end

  def index
    @musicians = Musician.all
  end

end