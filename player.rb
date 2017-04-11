class Player
  attr_reader :name
  def initialize(name)
    @name = name
    @current_player_indice = 0
  end
end