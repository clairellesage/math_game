require "pry"
require_relative "question"
require_relative "player"

module MathGame
	class Game
		attr_reader :name, :current_player, :player1, :player2
		attr_accessor :q1

		def initialize name
			puts 'NAME'
			@name = name
			generate_players
		end

		def generate_players
			@player1 = Player.new("P1")
			@player2 = Player.new("P2")
			@current_player = @player1
		end

		def new_question
			@q1 = Question.new("q1")
		end

		def answer_question
			new_question
			puts "#{current_player.name} : #{@q1.question}"
			player_answer = gets.chomp
			if player_answer.to_i == @q1.answer
					puts "#{current_player.name} answered #{player_answer}. Correct!"
				else 
					puts "#{current_player.name} answered #{player_answer}. Wrong! The answer was #{q1.answer}."
					@current_player.lives -= 1	
					@current_player.alive?
			end
		end

		def new_turn
			loop do 
				if current_player == player1
					answer_question
					@current_player = player2
					puts "----NEW TURN -----"
				else
					answer_question
					@current_player = player1
					puts "----NEW TURN -----"
				end
			end
		end
	end
end


# p current_player.name
# p new_game.name

# turn logic
# if current_player % == 0

	# def show_question(turn)
	# 	@questions.select do |turn|
	# 		puts turn[:q]
	# 		break
	# end

