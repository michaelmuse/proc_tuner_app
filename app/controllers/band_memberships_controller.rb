class BandMembershipsController < ApplicationController

  def new
    @musicians = Musician.all
    @bands = Band.all     
  end
  def create
    BandMembership.create({
      musician_id: params[:musician_id],
      band_id: params[:band_id]
      })
    redirect_to band_memberships_path
  end
  def index
    @memberships = BandMembership.all
    
  end

end