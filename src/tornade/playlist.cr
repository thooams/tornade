module Tornade
  class Playlist

    @suffle : Bool
    @repeat : UInt8
    @current : Song | Nil

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
      @current = nil
    end

    def next : Nil
      if @repeat != Repeat::One.value
        @current = songs[song_index+1]
      end
    end

    def prev : Nil
      if @repeat != Repeat::One.value
        @current = songs[song_index-1]
      end
    end

    def current : Tornade::Song | Nil
      @current || songs.first
    end

    def add(path : String) : Nil
      songs << Song.new path
    end

    def empty? : Bool
      songs.empty?
    end

    # Remove song by song
    def remove(song : Tornade::Song) : Nil
      songs.delete(song)
    end

    # Remove song by index
    def remove(index : Int32) : Nil
      songs.delete_at(index)
    end

    def select(index : Int32) : Nil
      @current = songs[index]
    end

    private def song_index : Int32
      songs.index(@current) || 0
    end

  end
end
