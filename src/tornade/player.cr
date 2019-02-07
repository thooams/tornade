require "soundfile"
require "asound"
include SoundFile
module Tornade
  include ALSA
  class Player

    property playlist

    def initialize(playlist)
      @playlist = playlist
      @volume   = Volume.new
    end

    def play
      SFile.open(playlist.current.path, :read)
    end

    def next
      playlist.next
    end

    def prev
      playlist.prev
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
