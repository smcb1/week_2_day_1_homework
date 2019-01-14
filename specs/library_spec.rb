require("minitest/autorun")
require("minitest/rg")
require_relative("../library.rb")

class TestLibrary < Minitest::Test
   
	def test_get_books
		library = Library.new( 
[
  {
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
  },

  {
    title: "the_wasp_factory",
    rental_details: {
     student_name: "Simon",
     date: "14/01/19"
    }
  }
 ] 
)
		assert_equal("the_wasp_factory", library.books[1][:title])
	end

	# def test_new_coach
	# 	team = Team.new("Jets", %w{Simon James Neil}, "Earl")
	# 	team.new_coach("Jesse")
	# 	assert_equal("Jesse", team.coach)
	# end

	# def test_add_player
	# 	team = Team.new("Jets", %w{Simon James Neil}, "Earl")
	# 	team.add_player("Colin")
	# 	assert_equal(4, team.players.count)
	# end

	def test_find_book
		library = Library.new( 
		[
		  {
		    title: "lord_of_the_rings",
		    rental_details: {
		     student_name: "Jeff",
		     date: "01/12/16"
		  }
		  },

		  {
		    title: "the_wasp_factory",
		    rental_details: {
		     student_name: "Simon",
		     date: "14/01/19"
		    }
		  } 
		 ] 
		)

		assert_equal({
		    title: "the_wasp_factory",
		    rental_details: {
		     student_name: "Simon",
		     date: "14/01/19"
		    }}, library.find_book("the the_wasp_factory"))
	end

	# def test_result__loss
	# 	team = Team.new("Jets", %w{Simon James Neil}, "Earl")
	# 	team.result("Loss")
	# 	assert_equal(0, team.points)
	# end

	# def test_result__win
	# 	team = Team.new("Jets", %w{Simon James Neil}, "Earl")
	# 	team.result("Win")
	# 	assert_equal(3, team.points)
	# end

end
