module FunWithStrings
  def palindrome?
    word = self.downcase.gsub(/\W/,"")
    word == word.reverse
  end
  def count_words
    words = self.downcase.split(/[^a-zA-Z]+/).reject{|e| e.empty?}
    result = Hash.new(0)
    words.each{|word| result[word] += 1}
    return result
  end
  def anagram_groups
    words = self.split(/[^a-zA-Z]+/).reject{|e| e.empty?}
    result = Hash.new(Array.new)
    words.each {|word| result[word.downcase.chars.sort.join] += [word]}
    return results.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
