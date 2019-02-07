require "./spec_helper"

describe Tornade::Player do

  test_wav = "spec/data/wave.wav"

  it "#play" do
    player = Tornade::Player.new(test_wav)
    player.play.should true
  end

end
