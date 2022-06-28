class Anagram
  attr_reader :word1, :word2

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagrams ()
    word1_compare = @word1.downcase.gsub(/[^a-z]/, "").split('').sort
    word2_compare = @word2.downcase.gsub(/[^a-z]/, "").split('').sort

    if (word1_compare.none? {|x| x.match(/[aeiou]/i)}) || (word2_compare.none? {|x| x.match(/[aeiou]/i)})
      "You need to input actual words!"
    elsif word1_compare.any? {|word1_compare| word2_compare.include?(word1_compare)} === false
      "These words have no letter matches and are antigrams"
    elsif word1_compare === word2_compare
      "These words are anagrams."
    else
      "These words are neither anagrams nor antigrams."
    end
  end
end