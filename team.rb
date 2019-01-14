class Team

	attr_accessor :team_name, :players, :coach, :points
	
	def initialize(team_name, players, coach)
		@team_name = team_name
		@players = players
		@coach = coach
		@points = 0
	end

	def team_name
		return @team_name 
	end

	def players
		return @players
	end

	def coach
 		return @coach
	end

	def new_coach(new_coach)
 		return @coach = new_coach
	end

	def add_player(new_player)
		return @players.unshift(new_player)
	end


	def find_player(player)
	 	return @players.any?(player)
	end

	def result(result)
		return @points if result == "Loss"
		return @points += 3 if result == "Win"
	end
end
