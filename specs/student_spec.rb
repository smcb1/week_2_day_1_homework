require("minitest/autorun")
require("minitest/rg")
require_relative("../student.rb")

class TestStudent < Minitest::Test

  def test_name
    student = Student.new("Simon", "G11")
    assert_equal("Simon", student.name) 
  end

  def test_cohort
    student = Student.new("Simon", "G11")
    assert_equal("G11", student.cohort) 
  end

  def test_name_update
    student = Student.new("Smon", "G11")
    student.name_update("Simon")
    assert_equal("Simon", student.name) 
  end

  def test_cohort_update
    student = Student.new("Simon", "G9")
    student.cohort_update("G11")
    assert_equal("G11", student.cohort) 
  end

  def test_talk_update
    student = Student.new("Simon", "G11")
    student.talk_update("I can talk!")
    assert_equal("I can talk!", student.talk)
  end

  def test_fave_lang
    student = Student.new("Simon", "G11")
    student.fave_lang("Python")
    assert_equal("I love Python", student.language)
  end

end