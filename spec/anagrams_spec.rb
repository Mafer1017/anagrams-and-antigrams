require ('rspec')
require ('anagrams')

describe("String#anagrams") do
  it("recognizes if two words are anagrams") do
    string = String.new
    expect(string.anagrams("ruby", "bury")).to(eq("These words are anagrams."))
  end
  it("recognizes if two words are anagrams regardless of case") do
    string = String.new
    expect(string.anagrams("Ruby", "Bury")).to(eq("These words are anagrams."))
  end
end