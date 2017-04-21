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

end
