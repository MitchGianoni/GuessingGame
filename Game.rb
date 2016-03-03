require "pry"

class Game
  def initialize(min, max, player, computer, smartcomputer)
    @min = min
    @max = max
    #@player = player
    #@computer = computer
    @smartcomputer = smartcomputer
  
  end

  def play
    answer = rand(@min..@max)
   guess = 0
    puts "Please guess a number between 1 and #{@max}."
   # guess = @player.get_guess(@max)
   # guess = @computer.random_player(@max)
   guess = @smartcomputer.get_guess(@min, @max,guess, answer)
    puts "They guessed: #{guess}"
    until guess == answer
      sleep 0.25
      if guess > answer
        puts "Too High, guess again."
        @max = guess
      else
        puts "Too Low, guess again."
        @min = guess
      end
      # guess = @player.get_guess(@max)
      @guess = guess 
    # guess = @computer.random_player(@max)
      guess = @smartcomputer.get_guess(@min, @max, guess, answer)
      puts "They guessed: #{guess}"
    end
    puts "Congratulations."
  end
end