require 'sinatra'
require 'sinatra/reloader'
require './lib/palindrome'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/phrase_parser') do
  phrases = Palindrome.new

  phrase1 = params.fetch("phrase1")
  phrase2 = params.fetch("phrase2")

  #input validation goes here

  if phrases.is_word?(phrase1) && phrases.is_word?(phrase2)

    if phrases.is_palindrome?(phrase1)
      @phrase1_palindrome_message = "'#{phrase1}' is a palindrome"
    else
      @phrase1_palindrome_message = "'#{phrase1}' is not a palindrome"
    end

    if phrases.is_palindrome?(phrase2)
      @phrase2_palindrome_message = "'#{phrase2}' is a palindrome"
    else
      @phrase2_palindrome_message = "'#{phrase2}' is not a palindrome"
    end

    if phrases.is_anagram?(phrase1, phrase2)
      @anagram_message = "'#{phrase1}' is an anagram of '#{phrase2}'"
    else
      @anagram_message = "'#{phrase1}' is not an anagram of '#{phrase2}'"
    end

    if phrases.is_antigram?(phrase1, phrase2)
      @antigram_message = "'#{phrase1}' is an antigram of '#{phrase2}'"
    else
      @antigram_message = "'#{phrase1}' is not an antigram of '#{phrase2}'"
    end

  elsif phrases.is_word?(phrase1) && !phrases.is_word?(phrase2)

    @phrase2_palindrome_message = "'#{phrase2}' is not valid input ;("

    if phrases.is_palindrome?(phrase1)
      @phrase1_palindrome_message = "'#{phrase1}' is a palindrome"
    else
      @phrase1_palindrome_message = "'#{phrase1}' is not a palindrome"
    end

  elsif !phrases.is_word?(phrase1) && phrases.is_word?(phrase2)

    @phrase1_palindrome_message = "'#{phrase1}' is not valid input ;("

    if phrases.is_palindrome?(phrase2)
      @phrase2_palindrome_message = "'#{phrase2}' is a palindrome"
    else
      @phrase2_palindrome_message = "'#{phrase2}' is not a palindrome"
    end

  else

    @phrase1_palindrome_message = "'#{phrase1}' is not valid input ;("
    @phrase2_palindrome_message = "'#{phrase2}' is not valid input ;("

  end

  erb(:output)
end