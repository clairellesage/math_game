#require_relative "game"
#require_relative "player"

class Question
	attr_reader :name, :question, :answer, :question_generator
	
	def initialize(name)
		@name = name
		@question = ""
		@answer = 0
		@question_generator = generate_question
		# @@all << self
	end

	def generate_question
		a = rand(10)
		b = rand(10)
		@question = "What is #{a} + #{b}?"
		@answer = a + b
	end
end

# q1 = MathGame::Question.new("q1": {Q: "2 + 2", A: "4"})	
# pp show_question(@questions)
# q1 = Question.new
# p q1.question
# p q1.answer