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
end
