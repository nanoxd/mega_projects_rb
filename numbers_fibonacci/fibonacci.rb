require 'minitest/autorun'

class TestFibonacci < Minitest::Test
  def setup
    @fib = Hash.new { |h, n| h[n] = h[n-1] + h[n-2] }

    @fib[0] = 0
    @fib[1] = 1
  end

  def test_eleventh_fib_number
    eleventh = @fib[11]
    assert_equal 89, eleventh
  end

  def test_one_hundredth_fib_number
    hundred = @fib[100]
    assert_equal 354_224_848_179_261_915_075, hundred
  end
end

