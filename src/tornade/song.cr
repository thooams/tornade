class Song

  @played : Boolean

  property played

  def initialize path: String
    @played = false
    @path = path
  end

  def name
  end

  def time
  end

  def played!
    @played = true
  end

end
