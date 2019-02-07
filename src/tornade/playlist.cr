module Tornade
  class Playlist

    @suffle : Bool
    @repeat : UInt8

    property suffle, repeat, current, songs

    enum Repeat : UInt8
      No
      One
      All
    end

    def initialize
      @suffle = false
      @repeat = Repeat::No.value
      @songs  = [] of Song
    end

    def next
      if @repeat
        current_song
      else
        current.played!
        current
      end
    end

    def prev
      if @repeat
        current_song
      else
        i = songs.index { |song| !song.played }
        songs[i-1].unplayed! unless i.nil?
        current
      end
    end

    def current
      songs.find { |song| !song.played }
    end

    def add(path : String)
      songs << Song.new path
    end

    # def remove index
    #   @songs
    # end

  end
end
