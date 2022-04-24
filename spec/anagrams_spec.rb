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
  it("recognizes if an input is not a real word.") do
      string = String.new
      expect(string.anagrams("Ruby", "grf")).to(eq("You need to input actual words!"))
  end
end