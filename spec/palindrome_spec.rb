require "palindrome"
require "rspec"
require "pry"


describe 'palindrome#isWord?' do
  let(:word) { Palindrome.new }

  it "returns true if the word has at least one vowel" do
    expect(word.is_word?("word")).to eq true
  end

  it "returns false if the word does not have a vowel" do
    expect(word.is_word?("wrd")).to eq false
  end

end

describe 'palindrome#clean_up_input' do
  let(:word) { Palindrome.new }

  it "downcases and removes white space and removes symbols from 'Hello World!" do
    expect(word.clean_up_input("Hello World!")).to eq "helloworld"
  end

end

describe 'palindrome#is_anagram?' do
  let(:word) { Palindrome.new }

  xit "returns true if the word pair is an anagram" do
    expect(word.is_anagram?("ward", "draw")).to eq true
  end

end