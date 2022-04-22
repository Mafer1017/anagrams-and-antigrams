class String
  def anagrams (word1, word2)
    word1_compare = word1.downcase.split('').sort
    word2_compare = word2.downcase.split('').sort

    if word1_compare === word2_compare
      "These words are anagrams."
    end
  end

end