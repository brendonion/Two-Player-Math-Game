class Game
  def initialize(player1, player2)
    puts "Welcome to Brendan's Math game!"
    @players = [player1, player2]
    @current_player_indice = 0
  end

  def next_player
    @current_player_indice = (@current_player_indice-1) % @players.length
  end

  def start_game
    until @players[@current_player_indice].lives == 0
      new_question = Questions.new
      puts "-----NEW TURN-----"
      puts "#{@players[@current_player_indice].name}: #{new_question.question}"
      answer = gets.chomp
      if answer.to_i == new_question.random1 + new_question.random2
        puts "Correct!"
        next_player
      else
        puts "Wrong!"
        @players[@current_player_indice].lives -= 1
        puts "#{@players[@current_player_indice].lives}/3"
        if @players[@current_player_indice].lives != 0
          next_player
        else
          next_player
          puts "-----GAME OVER-----"
          puts "#{@players[@current_player_indice].name} wins with a score of #{@players[@current_player_indice].lives}/3"
          puts "Good bye!"
          break
        end
      end
    end
  end
end

