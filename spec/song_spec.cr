require "./spec_helper"

describe "Tornade::Song" do

  test_wav = "spec/data/wave.wav"

  it "#path" do
    song = Tornade::Song.new(test_wav)
    song.path.should eq "spec/data/wave.wav"
  end

end
