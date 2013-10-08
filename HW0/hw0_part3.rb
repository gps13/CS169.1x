class BookInStock < ArgumentError
	
	attr_accessor :isbn, :price
	
	def initialize(isbn, price)
		@isbn = isbn
		raise ArgumentError unless !isbn.empty?
		@price = price
		raise ArgumentError unless price>0
	end


	
	def price_as_string
		"$%.2f" % price
	end
end
