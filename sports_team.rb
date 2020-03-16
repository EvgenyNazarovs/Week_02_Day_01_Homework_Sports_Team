class Team

  attr_reader :name, :players
  attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def add_player(new_player)
    @players.push(new_player)
  end 

  # def name
  #   return @name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end

  # def set_coach(coach)
  #   @coach = coach
  # end



end
