require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
    @rocket = Rocket.new
  end

  def test_has_name
      @rocket = Rocket.new(name: "aries")
    result = @rocket.name   # expect it
    assert_equal("aries",result)
  end

  def test_has_colour
    @rocket = Rocket.new(colour: "red")
    result = @rocket.colour
    assert_equal("red",result)
  end

def test_rocket_has_no_name
  @rocket = Rocket.new

  if @rocket.name == "" || !@rocket.name
    valid=0
  else
    valid=1
  end
  assert_equal(1,valid)
end

def test_flying_true_or_false
  @rocket = Rocket.new
  result = @rocket.flying?
  assert_equal(false, result)
end

end
