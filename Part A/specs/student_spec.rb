require('minitest/autorun')
require('minitest/reporters')
require_relative('../student.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


class TestStudent < MiniTest::Test

def setup
  @test_student1 = Student.new("Evan", "E36")
end

def test_get_student_name
  assert_equal("Evan", @test_student1.name)
end

def test_get_student_cohort
  assert_equal("E36", @test_student1.cohort)
end

def test_change_student_name
  @test_student1.change_student_name("Eva")
  assert_equal("Eva", @test_student1.name)
end

def test_change_student_cohort
  @test_student1.change_student_cohort("E37")
  assert_equal("E37", @test_student1.cohort)
end



end
