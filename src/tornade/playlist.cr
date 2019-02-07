class PlayList

  @suffle : Boolean
  @repeat : Int8
  @songs  : Array of Song

  property suffle, repeat, current_song

  enum Repeat : UInt8
    No
    One
    All
  end

  def initialize
    @suffle = false
    @repeat = Repeat::No.value
  end

  def next
    if @repeat
      current_song
    else
      @songs.next
    end
  end

  def prev
    if @repeat
      current_song
    else
      @songs.prev
    end
  end

  def current
    @songs.current
  end

  def add song
    @songs << song
  end

  # def remove index
  #   @songs
  # end

end
