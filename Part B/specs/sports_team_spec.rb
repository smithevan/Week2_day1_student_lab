require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


class TestSportsTeam < MiniTest::Test

  def setup
    @test_team = SportsTeam.new("Python Panthers", ["Jacob", "Jim", "Abby",
          "Catherine", "Jen", "Matt"], "Coach Winner")
  end

  def test_get_team_name
    assert_equal("Python Panthers", @test_team.get_team_name)
  end

  def test_get_players
    assert_equal(["Jacob", "Jim", "Abby",
          "Catherine", "Jen", "Matt"], @test_team.get_player_names)
  end

  def test_get_coach
    assert_equal("Coach Winner", @test_team.get_coach)
  end




end
