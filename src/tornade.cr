# TODO: Write documentation for `Tornade`
require "./tornade/*"
module Tornade
  VERSION = "0.1.0"
end

playlist = Tornade::Playlist.new
player = Tornade::Player.new playlist
