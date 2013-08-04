require 'minitest/autorun'
require 'minitest/pride'
require_relative 'pig_latin'

class PigLatinTest < MiniTest::Test

  def test_consonant_sound
    consonant = PigLatin.new("happy")
    assert_equal "appyhay", consonant.convert
  end

  def test_consonant_output
    consonant = PigLatin.new("glove")
    assert_equal "oveglay", consonant.convert
  end

  def test_vowel_output
    vowel_word = PigLatin.new("egg")
    assert_equal "eggay", vowel_word.convert
  end

  def test_y_output
    y_word = PigLatin.new("yellow")
    assert_equal "ellowyay", y_word.convert
  end

end
