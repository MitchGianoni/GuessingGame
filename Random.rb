class RandomPlayer
	def initialize
		@choice = 0
	end

	def random_player(max)
    	@choice = rand(1..max)
  	end
end