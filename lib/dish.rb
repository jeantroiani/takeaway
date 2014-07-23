class Dish

	def initialize(name,price,*ingredients)
		@name = name
		@price = price
		@ingredients = ingredients
		
	end

	def item_name
		@name
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
