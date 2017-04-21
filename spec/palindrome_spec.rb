require "palindrome"
require "rspec"
require "pry"


describe 'Palindrome#isWord?' do
  let(:word) { Palindrome.new }

  it "returns true if the word has at least one vowel" do
    expect(word.is_word?("word")).to eq true
  end

  it "returns false if the word does not have a vowel" do
    expect(word.is_word?("wrd")).to eq false
  end

end

describe 'Palindrome#clean_up_input' do
  let(:word) { Palindrome.new }

  it "downcases and removes white space and symbols from 'Hello World!" do
    expect(word.clean_up_input("Hello World!")).to eq "helloworld"
  end

  it "downcases and removes dashes and symbols from 'Hello World!" do
    expect(word.clean_up_input("this-is-separated!")).to eq "thisisseparated"
  end

  it "returns an empty string if there are only special characters" do
    expect(word.clean_up_input("!!!}345678/////?????$$%%%^")).to eq ""
  end

  it "returns an empty string if there is only whitespace" do
    expect(word.clean_up_input("      ")).to eq ""
  end

end

describe 'Palindrome#is_anagram?' do
  let(:word) { Palindrome.new }

  it "returns true if the word pair is an anagram" do
    expect(word.is_anagram?("ward", "draw")).to eq true
  end

  it "returns false if the word pair is the same word" do
    expect(word.is_anagram?("ward", "ward")).to eq false
  end

  it "returns false if the word pair is the same word" do
    expect(word.is_anagram?("ward", "ward")).to eq false
  end

  it "returns false if the word pair is the same word regardless of symbols and case" do
    expect(word.is_anagram?("WARD", "ward!")).to eq false
  end

  it "returns true if the word pair is an anagram regardless of symbols and case" do
    expect(word.is_anagram?("DRAW", "ward!")).to eq true
  end

  it "returns true if the sentence is an anagram" do
    expect(word.is_anagram?("dormitory", "dirty room!")).to eq true
  end

  it "returns false for a word with the same letters forward and backward" do
    expect(word.is_anagram?("Madam?", "Madam!")).to eq false
  end

end

describe 'Palindrome#is_palindrome?' do
  let(:word) { Palindrome.new }

  it "returns false if the word is not a palindrome" do
    expect(word.is_palindrome?("ward")).to eq false
  end

  it "returns true if the sentence is an palindrome" do
    expect(word.is_palindrome?("A man, a plan, a canal, Panama!")).to eq true
  end

  it "returns true for a word with the same letters forward and backward" do
    expect(word.is_palindrome?("Madam?")).to eq true
  end

  it "returns false for an empty string" do
    expect(word.is_palindrome?("")).to eq false
  end

end

describe 'Palindrome#is_antigram?' do
  let(:word) { Palindrome.new }

  it "returns false if the words are not an antirgram" do
    expect(word.is_antigram?("ward", "draw")).to eq false
  end

  it "returns true if the words are antirgrams" do
    expect(word.is_antigram?("good", "bye")).to eq true
  end

  it "returns false if of the the inputs is not a word" do
    expect(word.is_antigram?("###", "bye")).to eq false
  end

  it "returns false if either of the the inputs is an empty string" do
    expect(word.is_antigram?("", "bye")).to eq false
  end

  it "returns true if the phrases are antigrams" do
    expect(word.is_antigram?("holy cow", "batman")).to eq true
  end

end
