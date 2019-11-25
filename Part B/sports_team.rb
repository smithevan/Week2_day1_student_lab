class SportsTeam

  def initialize(team_name, team_members, coach)
    @team_name = team_name
    @team_members = team_members
    @coach = coach
  end

  def get_team_name
    return @team_name 
  end

end
