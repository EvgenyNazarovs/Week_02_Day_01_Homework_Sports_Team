require('minitest/autorun')
require('minitest/reporters')

require_relative('../sports_team.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < Minitest::Test

  def setup
    @players = ["I. Larionov", "V. Kozlov", "M. Kuznetsov",
               "N. Lidstrom", "S. Yzerman", "A. Miller"]

    @team1 = Team.new("Detroit Red Wings", @players, "Scotty Bowman")

  end

  def test_team_name
    assert_equal("Detroit Red Wings", @team1.name)
  end

  def test_players
    assert_equal(@players, @team1.players)
  end

  def test_coach
    assert_equal("Scotty Bowman", @team1.coach)
  end

  def test_set_coach
    @team1.coach = "Tretyakov"
    assert_equal("Tretyakov", @team1.coach)
  end

  def test_add_player
    assert_equal(["I. Larionov", "V. Kozlov", "M. Kuznetsov",
               "N. Lidstrom", "S. Yzerman", "A. Miller", "A. Irbe"], @team1.add_player("A. Irbe"))
  end

  def test_check_player_name
    assert_equal(true, @team1.check_player_name("V. Kozlov"))
  end

  def test_add_point_if_win
    @team1.add_point("win")
    assert_equal(1, @team1.points)
  end

end


=begin

Make a class to represent a Team that has the properties Team name
(String), Players (array of strings) and a Coach (String).

For each property in the class make a getter method than can
return them.

Create a setter method to allow the coach’s name to be updated.

Refactor the class to use attr_reader or attr_accessor
instead of your own getter and setter methods.

Create a method that adds a new player to the players array.

Add a method that takes in a string of a player’s name and
checks to see if they are in the players array.

Add a points property into your class that starts at 0.

Create a method that takes in whether the team has won or l
ost and updates the points property for a win.


=end
