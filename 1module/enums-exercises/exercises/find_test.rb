gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindTest < Minitest::Test

  def test_find_first_seven_letter_word
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
    found = words.find do |word|
      word.length == 7
    end
    assert_equal "unicorn", found
  end

  def test_no_waldo
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = words.find do |word|
      word == "waldo"
    end
    assert_equal nil, found
  end

  def test_find_waldo
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    found = words.find do |word|
      word == "waldo"# Your code goes here
    end
    assert_equal "waldo", found
  end

  def test_cannot_find_3_letter_words
    words = ["piglet", "porridge", "bear", "blueberry"]
    found = words.find do |word|
      word.length == 3
    end
    # Your code goes here
    assert_equal nil, found
  end

  def test_find_13
    skip
    numbers = [2, 13, 19, 8, 3, 27]
    # Your code goes here
    assert_equal 13, found
  end

  def test_find_first_even_number
    skip
    numbers = [3, 7, 13, 11, 10, 2, 17]
    # Your code goes here
    assert_equal 10, found
  end

  def test_find_first_multiple_of_3
    skip
    numbers = [2, 8, 9, 27, 24, 5]
    # Your code goes here
    assert_equal 9, found
  end

  def test_find_first_word_starting_with_q
    skip
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    # Your code goes here
    assert_equal "quill", found
  end

  def test_find_first_word_ending_with_er
    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    found = words.find do |word|
      word[-2..-1] == "er"# Your code goes
    end
    assert_equal "finger", found
  end

  def test_find_first_number_greater_than_20
    numbers = [1, 8, 19, 21, 29, 31, 34]
    found = numbers.find do |num|
      num > 20
    end# Your code goes here
    assert_equal 21, found
  end

end
