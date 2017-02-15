#require_relative "game"
#require_relative "question"

class Player
	attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def alive?
  	if @lives > 0
  		puts "#{name} has #{lives} lives left."
  	else 
  		puts "#{name} is dead!"
      abort("Goodbye!") 
    end
  end
end

# player1 = Player.new("1")
# player2 = Player.new("2")

# p player1.name
# p player2.name