require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Rainbow Squad", 2, ["Abby", "Meg", "Sarah"])
  end

  def test_to_hash
    # Arrange
    result = @team.to_hash
    # Act
    expected = Hash
    # Assert
    assert_equal(expected, result.class)
  end

  def test_variables_saved_correctly
    team = @team.to_hash
    result   = team[:team_name]
    expected = "Rainbow Squad"
    assert_equal(expected, result)
  end

  def test_hash_can_be_updated
    @team.points = 22
    result = @team.points
    expected = 22
    assert_equal(expected, result)
  end

end
