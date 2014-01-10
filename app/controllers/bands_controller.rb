class BandsController < ApplicationController

  def new
    @band = Band.new
  end

  def edit
    @band = Band.find(params[:band][:id])
  end

  def create
    @band = Band.create
    redirect_to bands_path
  end

  def index
    @bands = Band.all    
  end

  def update
    @band = Band.find(params[:band][:id])
    redirect_to band_path
  end

end