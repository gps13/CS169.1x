def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant?(string)
	if string.empty? || string.gsub(/[^a-zA-Z]/, '') != string
		return false
	else
		return true if !'aeiouAEIOU'.include? string[0]
	end
	
end

def binary_multiple_of_4?(string)
	if string.empty? || string =='0'
		return false
	elsif !(string=~/^(?:[01]*0)?0$/).nil?
		return true
	else 
		return false
	end
end

puts binary_multiple_of_4?('1100')
puts binary_multiple_of_4?('1101')