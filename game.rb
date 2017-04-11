class Game
  def initialize
    @players = [1, 2]
    @current_player_indice = 0
    @lives = [3, 3]
  end

  def random_number
    rand(1..20)
  end

  def current_player
    @players[@current_player_indice]
    @lives[@current_player_indice]
  end

  def next_player
    @current_player_indice = (@current_player_indice-1) % @players.length
  end

  def question
    until @lives[@current_player_indice] == 0
      random1 = random_number
      random2 = random_number
      puts "#{@players[@current_player_indice]}: What is #{random1} + #{random2}?"
      answer = gets.chomp
      answer
      if answer.to_i == (random1 + random2)
        puts "Correct!"
        next_player
      else
        puts "Wrong!"
        @lives[@current_player_indice] -= 1
        puts "#{@lives[@current_player_indice]}/3"
        if @lives[@current_player_indice] != 0
          next_player
        else
          next_player
          puts "#{@players[@current_player_indice]} Wins!"
          break
        end
      end
    end
  end
end


newGame = Game.new

newGame.question


