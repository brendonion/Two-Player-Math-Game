class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
  
  def current_player
    @players[@current_player_indice]
    @lives[@current_player_indice]
  end
end