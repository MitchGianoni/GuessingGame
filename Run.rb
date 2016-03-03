require "pry"

require "./human"
require "./game"
require "./counting"
require "./random"
require "./smart"

#binding.pry

game = Game.new(0, 100, Human.new, RandomPlayer.new, SmartPlayer.new)
game.play

#binding.pry