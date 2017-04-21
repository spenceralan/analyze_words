class Palindrome

  def is_word?(user_input)
    user_input.match?(/[aeiouy]+/i)
  end

  def clean_up_input(input)
    input.downcase.gsub!(/[^[:alpha:]]/, "")
  end

  def is_anagram?(word1, word2)
    return false if word1 == word2
    word1.chars.sort == word2.chars.sort
  end
  

end
