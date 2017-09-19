require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
    @rocket = Rocket.new
  end

  def test_has_name
    # arrange
      @rocket = Rocket.new(name: "aries")
  # act
    result = @rocket.name   # expect it
#assert#
    assert_equal("aries",result)
  end

  def test_has_colour
    @rocket = Rocket.new(colour: "red")
    result = @rocket.colour
    assert_equal("red",result)
  end


end
