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
  it("recognizes if two words are antigrams.") do
    string = String.new
    expect(string.anagrams("hi", "bye")).to(eq("These words have no letter matches and are antigrams"))
  end
  it("recognizes if two sentences are anagrams or antigrams as well, ignoring spaces and punctuation.") do
    string = String.new
    expect(string.anagrams("The Morse Code", "Here come dots!")).to(eq("These sentences are anagrams!"))
  end
end