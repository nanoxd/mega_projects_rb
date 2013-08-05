require 'minitest/autorun'
require 'minitest/pride'
require_relative './palindrome'

class PalindromeTest < Minitest::Test

  def test_palindrome
    pali = Palindrome.new("civic")
    assert_same true, pali.convert
  end

  def test_not_palindrome
    pali = Palindrome.new("words")
    assert_same false, pali.convert
  end
end
