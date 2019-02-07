class Volume

  STEP = 10

  @volume : Int8

  def initialize
    @volume = 50
  end

  def up
    @volume += STEP
  end

  def down
    @volume -= STEP
  end

  def mute
    @volume = 0
  end

end
