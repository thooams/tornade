require "soundfile"
require "asound"
include SoundFile
module Tornade
  include ALSA
  class Player

    def initialize(@file_name : String)
      @file_name = file_name
      @volume    = Volume.new
    end

    def play
      song = @playlist.current
      SFile.open(song.path, :read)
    end

    def next
      @playlist.next
    end

    def prev
      @playlist.prev
    end

    def stop
    end

    def pause
    end

    def volume
      @volume
    end

  end
end
