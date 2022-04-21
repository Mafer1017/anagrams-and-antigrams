require ('rspec')
require ('anagrams')

describe("String#anagram") do
  it("recognizes if two words are anagrams") do
    string = String.new
    expect(string.anagram("ruby", "bury")).to(eq("These words are anagrams."))
  end
end