module FunWithStrings
  def palindrome?
    str= self.downcase.gsub(/\W/,'')
    return str == str.reverse
  end
  def count_words(str)
    clearstr= str.downcase.gsub(/\W/,'')
    words=clearstr.split(" ")
    array=Hash.new(0)
    words.each do |word|
    array[word]+=1
  end
  return array
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
