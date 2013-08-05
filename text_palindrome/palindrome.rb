class Palindrome
  def initialize(string)
    @palindrome = string
  end

  def convert
    if @palindrome == @palindrome.reverse
      true
    else
      false
    end
  end

end
