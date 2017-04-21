class Palindrome

  def is_word?(user_input)
    user_input.match?(/[aeiouy]+/i)
  end

  def clean_up_input(input)
    input.downcase!
    input.gsub!(/[^[:alpha:]]/, "")
    input
  end

  def is_anagram?(word1, word2)
    word1 = clean_up_input(word1)
    word2 = clean_up_input(word2)

    return false if word1 == word2
    word1.chars.sort == word2.chars.sort
  end
  

end