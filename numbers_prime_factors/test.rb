require 'minitest/autorun'
require 'minitest/pride'
require_relative './prime_factors'

class PrimeFactorsTest < MiniTest::Unit::TestCase

  def test_generated_prime_factors
    number = 4123
    prime = PrimeFactors.new
    primes = prime.generate(number)
    assert_equal [7, 19, 31], primes
  end

  def test_longer_number
    number = 231231232131
    prime = PrimeFactors.new
    primes = prime.generate(number)
    assert_equal [3, 19, 31231, 129893], primes
  end

end
