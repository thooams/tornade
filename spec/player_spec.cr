require "./spec_helper"

describe "Tornade::Player" do

  test_wav  = "spec/data/wave.wav"
  test_wav2 = "spec/data/wave2.wav"

  it "#play" do
    playlist = Tornade::Playlist.new
    playlist.add test_wav
    player = Tornade::Player.new(playlist)
    player.play.should be_true
    player.current.path.should eq test_wav
  end

  it "#next" do
    playlist = Tornade::Playlist.new
    playlist.add test_wav
    playlist.add test_wav2
    player = Tornade::Player.new(playlist)
    player.next.should be_true
    player.current.path.should eq test_wav2
  end

  it "#prev" do
    playlist = Tornade::Playlist.new
    playlist.add test_wav
    playlist.add test_wav2
    player = Tornade::Player.new(playlist)
    player.next
    player.prev.should be_true
    player.current.path.should eq test_wav
  end

end
