def sum(an_array)
	return an_array.reduce(:+) unless an_array.empty?
		return 0
end

puts sum([1,2,3])
puts sum([])

puts ("============================")

def max_2_sum(an_array)
	if an_array.empty?
		return 0
	elsif an_array.length == 0
		return an_array[0] 
	else
		an_array.sort!.reverse!
		return sum(an_array[0..1])
	end
end

puts max_2_sum([1,2,3])
puts max_2_sum([1,2,3,3])
puts max_2_sum([])
puts max_2_sum([1])
puts ("============================")
def sum_to_n?(an_array,n)
	if an_array.empty? && n==0
		return true
	elsif an_array.empty? && n!=0
		return false
	else
		hash = {}
		an_array.each do |i|
			hash[i] = i
		end
		hash.each do |k , v|
			if hash.has_key?(n-v)
				return true				
			end
		end
		return false
	end

end
puts ("1--------------")
puts sum_to_n?([1,2,3],6)
puts ("2--------------")
puts sum_to_n?([1,2,3],5)
puts ("3--------------")
puts sum_to_n?([1,2,3],4)
puts ("4--------------")
puts sum_to_n?([],4)
puts ("5--------------")
puts sum_to_n?([3,0,5], 5)
puts ("6--------------")
puts sum_to_n?([], 1)
