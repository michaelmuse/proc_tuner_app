class BandsController < ApplicationController

  def new
    
  end

  def create
    Band.create(name: params[:name])
    redirect_to bands_path
  end

  def index
    @bands = Band.all    
  end

end