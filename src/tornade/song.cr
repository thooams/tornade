module Tornade
  class Song

    @played : Bool
    @path   : String

    property played, path

    def initialize(path : String)
      @played = false
      @path   = path
    end

    def name
    end

    def time
    end

    def played!
      @played = true
    end

    def unplayed!
      @played = false
    end

  end
end
