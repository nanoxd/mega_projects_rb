class Palindrome
  def initialize(string)
    @palindrome = string
  end

  def convert
    @palindrome == @palindrome.reverse
  end

end
