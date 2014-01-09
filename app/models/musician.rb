class Musician < ActiveRecord::Base
  attr_accessible :name
  has_many :bands, through: :band_memberships
  has_many :band_memberships

  def join_band(band)
    self.bands << band    
  end

end
