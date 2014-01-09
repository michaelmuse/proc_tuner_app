require 'spec_helper'

describe BandMembership do
  describe "Given a musician and a band" do
    before do
      @b = Band.create
      @m = Musician.create
    end
    describe "given we say a musician is in a band" do
      before do
        @m.bands << @b
      end
      it "should actually be in a band" do
        @m.bands.should == [@b]
        @b.musicians.should == [@m]
      end
    end
  end
  describe "Given a musician joins a band" do
    before do
      @b1 = Band.create
      @m1 = Musician.create
      @m1.join_band(@b1)
    end
    it "should actually be in a band" do
      @m1.bands.should == [@b1]
      @b1.musicians.should == [@m1]
    end
  end
end
