require "./spec_helper"

describe "Tornade::Playlist" do

  test_wav_path  = "spec/data/wave.wav"
  test_wav_path2 = "spec/data/wave2.wav"
  test_wav_path3 = "spec/data/wave3.wav"

  it "#add" do
    playlist = Tornade::Playlist.new
    playlist.add test_wav_path
    playlist.songs.size.should eq 1
    playlist.songs.first.is_a?(Tornade::Song).should be_true
  end

  it "#current" do
    playlist = Tornade::Playlist.new
    playlist.add test_wav_path
    playlist.add test_wav_path2
    playlist.current.should eq playlist.songs.first
  end

  it "#next" do
    playlist = Tornade::Playlist.new
    playlist.add test_wav_path
    playlist.add test_wav_path2
    playlist.current.should eq playlist.songs.first
    playlist.next
    playlist.current.should eq playlist.songs.last
  end

end
