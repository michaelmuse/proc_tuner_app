require 'spec_helper'

describe BandMembershipsController do
  describe "Given a musician and a band" do
    before do
      @b1 = Band.create(name: "Weezer")
      @m1 = Musician.create(name: "Rivers Cuomo")
    end
    describe "on the new band memberships page" do
      before do
        visit new_band_membership_path
      end
      it "makes a bandmembership using a form" do
        select @m1.name, from: 'musician_id'
        select @b1.name, from: 'band_id'
        click_button 'submit'
        page.should have_content(@b1.musicians.first.name)
        page.should have_content(@m1.bands.first.name)
      end
    end
  end
end




# describe BandsController do
#   describe "given a band" do
#     before do
#       @band = "Metallica"
#     end
#     describe "starting on the new band page" do
#       before do
#         visit new_band_path
#       end
#       it "creates a new band from a form" do
#         fill_in :name, with: @band
#         click_button 'submit'
#         current_path.should == bands_path
#         page.should have_content(@band)
#       end
#     end
#   end
# end