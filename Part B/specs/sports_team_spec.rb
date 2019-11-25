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

  def test_add_player_to_team
    @test_team.add_player("John")
    assert_equal(7, @test_team.team_members.length)
  end

  def test_if_player_on_team
    assert_equal(true, @test_team.player_on_team("Abby"))
  end

  def test_adding_points_if_win
    @test_team.add_points("win")
    assert_equal(1, @test_team.points)
  end


end
