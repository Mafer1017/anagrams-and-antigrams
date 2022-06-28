#!/usr/bin/env ruby
require ('./lib/anagrams.rb')

puts ""
puts "Enter in the first word!"
word1 = gets.chomp
puts "Enter in the second word!"
word2 = gets.chomp
anagram = Anagram.new(word1, word2)
puts anagram.anagrams