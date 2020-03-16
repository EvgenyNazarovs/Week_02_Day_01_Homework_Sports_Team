class Team

  attr_reader :name, :players
  attr_accessor :coach, :points

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def check_player_name(player)
    return @players.include? player
  end

  def add_point(result)
    @points = 1 if result == "win"
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
