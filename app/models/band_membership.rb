class BandMembership < ActiveRecord::Base
  attr_accessible :band_id, :musician_id
  belongs_to :band
  belongs_to :musician
end
