class SmartPlayer
	def initialize
		@choice = 0
	end

	 def get_guess(min, max, guess, answer)
	 	if guess == 0
	 		@choice = rand(1..max)
	 	elsif guess > answer
	 		@choice = rand(min..guess)
	 	elsif guess < answer
	 		@choice = rand(guess..max)
	 	end
	end
end