class Game
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player_indice = 0
    @lives = [3, 3]
  end

  def current_player
    @players[@current_player_indice]
    @lives[@current_player_indice]
  end

  def next_player
    @current_player_indice = (@current_player_indice-1) % @players.length
  end

  def start_game
    until @lives[@current_player_indice] == 0
      new_question = Questions.new
      puts "--------NEW TURN--------"
      puts "#{@players[@current_player_indice].name}: #{new_question.question}"
      answer = gets.chomp
      answer
      if answer.to_i == new_question.random1 + new_question.random2
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
          puts "--------GAME OVER--------"
          puts "#{@players[@current_player_indice].name} wins with a score of #{@lives[@current_player_indice]}/3"
          break
        end
      end
    end
  end
end

