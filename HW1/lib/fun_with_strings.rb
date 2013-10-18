module FunWithStrings
  def palindrome?
    str= self.downcase.gsub(/\W/,'')
    return str == str.reverse
  end
  def count_words
    array=Hash.new(0)
    self.downcase.scan(/\b[a-z]+/).each do |word|
      array[word]+=1
    end
    return array
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
