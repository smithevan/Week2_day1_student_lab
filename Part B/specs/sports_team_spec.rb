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
    assert_equal("Python Panthers", @test_team.team_name)
  end

  def test_get_players
    assert_equal(["Jacob", "Jim", "Abby",
          "Catherine", "Jen", "Matt"], @test_team.team_members)
  end

  def test_get_coach
    assert_equal("Coach Winner", @test_team.coach)
  end

  def test_update_coach_name
    assert_equal("Coach Loser", @test_team.coach = "Coach Loser")
  end




end
