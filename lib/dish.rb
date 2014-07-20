class Dish

	def initialize(price=nil)
		@price = price
	end

	def price
		@price
	end

	def update_price(new_price)
		@price=new_price
	end

end
