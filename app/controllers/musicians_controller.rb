class MusiciansController < ApplicationController

  def new
    @musician = Musician.new
  end

  def create
    new_musician = Musician.create(name: params[:musician][:name])
    redirect_to musicians_path
  end

  def index
    @musicians = Musician.all
  end

  def edit
    @musician = Musician.find(params[:id])
  end
  def destroy
    Musician.find(params[:id]).destroy
    redirect_to musicians_path    
  end
  def update
    musician = Musician.find(params[:id])
    puts params
    musician.name = params[:musician][:name]
    musician.save
    redirect_to musician_path(musician)
  end
  def show
    @musician = Musician.find(params[:id])    
  end

end