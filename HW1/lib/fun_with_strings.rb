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
    result = Array.new(0)
    array = self.downcase.scan(/\b[a-z]+/)
    array.each do |word|
      temp_array = []
      array.each do |gather|
        if gather.chars.sort.join == word.chars.sort.join
          temp_array << gather
        end
      end
    result << temp_array     
    end
    return result.uniq
  end

end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
