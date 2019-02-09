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

  it "#remove by song" do
    playlist = Tornade::Playlist.new
    playlist.add test_wav_path
    playlist.remove playlist.songs.first
    playlist.songs.size.should eq 0
  end

  it "#remove by song" do
    playlist = Tornade::Playlist.new
    playlist.add test_wav_path
    playlist.remove 0
    playlist.songs.size.should eq 0
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

  it "#prev" do
    playlist = Tornade::Playlist.new
    playlist.add test_wav_path
    playlist.add test_wav_path2
    playlist.select(1)
    playlist.current.should eq playlist.songs.last
    playlist.prev
    playlist.current.should eq playlist.songs.first
  end

  it "#empty?" do
    playlist = Tornade::Playlist.new
    playlist.empty?.should be_true
  end

end
