module FunWithStrings
  def palindrome?
    str= self.downcase.gsub(/\W/,'')
    return str == str.reverse
  end
  def count_words
    words=self.downcase.gsub(/\W/,' ').split(/\s+/)
    array=Hash.new(0)
    words.each do |word|
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
