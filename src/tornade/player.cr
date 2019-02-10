require "soundfile"
#require "asound"
include SoundFile
module Tornade
  #include ALSA
  class Player

    property playlist

    def initialize(playlist : Tornade::Playlist)
      @playlist = playlist
      @volume   = Volume.new
    end

    def play : Bool
      song = playlist.current
      SFile.new.open(song.path, :read)
    end

    def play(path : String)
      SFile.new.open(path, :read)
    end

    def next : Bool
      playlist.next
      play
    end

    def prev : Bool
      playlist.prev
      play
    end

    # def stop : Nil
    # end
    #
    # def pause : Nil
    # end

    def volume : Tornade::Volume
      @volume
    end

    def current : Song | Nil
      playlist.current
    end

  end
end
