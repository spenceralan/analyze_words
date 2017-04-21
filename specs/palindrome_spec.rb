require "palindrome"
require "rspec"
require "pry"


describe('palindrome#isWord?') do
  let(:word) { Palindrome.new }

  it("returns true if the word has at least one vowel") do
    expect(word.is_word?("word")).to(eq(true))
  end

end
