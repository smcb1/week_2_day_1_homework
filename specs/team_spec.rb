require("minitest/autorun")
require("minitest/rg")
require_relative("../team.rb")

class TestTeam < Minitest::Test
   
	def test_team_name
		team = Team.new("Jets", %w{Simon James Neil}, "Earl")
		assert_equal("Jets", team.team_name)
	end

	def test_new_coach
		team = Team.new("Jets", %w{Simon James Neil}, "Earl")
		team.new_coach("Jesse")
		assert_equal("Jesse", team.coach)
	end

	def test_add_player
		team = Team.new("Jets", %w{Simon James Neil}, "Earl")
		team.add_player("Colin")
		assert_equal(4, team.players.count)
	end

	def test_find_player
		team = Team.new("Jets", %w{Simon James Neil}, "Earl")
		#team.find_player("James")
		assert_equal(true, team.find_player("James"))
	end

	def test_result__loss
		team = Team.new("Jets", %w{Simon James Neil}, "Earl")
		team.result("Loss")
		assert_equal(0, team.points)
	end

	def test_result__win
		team = Team.new("Jets", %w{Simon James Neil}, "Earl")
		team.result("Win")
		assert_equal(3, team.points)
	end

end
