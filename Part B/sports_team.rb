class SportsTeam

attr_accessor :team_name, :team_members, :coach

  def initialize(team_name, team_members, coach)
    @team_name = team_name
    @team_members = team_members
    @coach = coach
  end

  # def get_team_name
  #   return @team_name
  # end

  # def get_player_names
  #   return @team_members
  # end

  # def get_coach
  #   return @coach
  # end

  # def change_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_player(new_player)
    @team_members.push(new_player)
  end

  def player_on_team(player_being_checked)
    for member in @team_members
      if member == player_being_checked
        return true
      end
    end
    return false
  end
  

end
