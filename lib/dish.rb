class Dish


	def initialize(price,*ingredients)
		@price = price
		@ingredients = ingredients
	end

	def price
		@price
	end

	def update_price(new_price)
		@price=new_price
	end

	def ingredients
		@ingredients||=[]
	end


end
