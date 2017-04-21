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
  
  def is_palindrome?(phrase)
    phrase = clean_up_input(phrase)
    
    return false if phrase == ""
    
    phrase.reverse == phrase
  end

  def is_antigram?(word1, word2)
    word1 = clean_up_input(word1)
    word2 = clean_up_input(word2)

    return false if word1 == "" || word2 == ""
    
    word2.each_char do |letter|
      return false if word1.chars.include?(letter)
    end
    return true
  end
  
end