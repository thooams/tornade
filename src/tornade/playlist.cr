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

    # Return next song of songs array
    def next : Nil
      if @repeat != Repeat::One.value
        @current = songs[song_index+1]
      end
    end

    # Return previous Song of songs array
    def prev : Nil
      if @repeat != Repeat::One.value
        @current = songs[song_index-1]
      end
    end

    # Return current Song object of songs array
    def current : Tornade::Song | Nil
      @current || songs.first
    end

    # Add Song object to songs array
    def add(path : String) : Nil
      songs << Song.new path
    end

    # Check if songs array is empty?
    def empty? : Bool
      songs.empty?
    end

    # Remove song with song argument
    def remove(song : Tornade::Song) : Nil
      songs.delete(song)
    end

    # Remove song by index
    def remove(index : Int32) : Nil
      songs.delete_at(index)
    end

    # Return song by index
    def select(index : Int32) : Nil
      @current = songs[index]
    end

    # Return song index
    private def song_index : Int32
      songs.index(@current) || 0
    end

  end
end
