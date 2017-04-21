class Palindrome

  def is_word?(user_input)
    user_input.match?(/[aeiouy]+/i)
  end

  def clean_up_input(input)
    input.downcase!
    input.gsub!(/[^[:alpha:]]/, "")
    input
  end

  def is_anagram?(phrase1, phrase2)
    phrase1 = clean_up_input(phrase1)
    phrase2 = clean_up_input(phrase2)

    return false if phrase1 == phrase2
    
    phrase1.chars.sort == phrase2.chars.sort
  end
  
  def is_palindrome?(phrase)
    phrase = clean_up_input(phrase)
    
    return false if phrase == ""
    
    phrase.reverse == phrase
  end

  def is_antigram?(phrase1, phrase2)
    phrase1 = clean_up_input(phrase1)
    phrase2 = clean_up_input(phrase2)

    return false if phrase1 == "" || phrase2 == ""
    
    phrase2.each_char do |letter|
      return false if phrase1.chars.include?(letter)
    end
    return true
  end
  
end