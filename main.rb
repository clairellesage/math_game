require_relative "game"

puts "hey"
new_game = MathGame::Game.new("Game1")
new_game.new_turn
# binding.pry
puts "end"
