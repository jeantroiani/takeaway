class Menu

	def initialize
		@items=[]
	end

	def items
		@items
	end

	def add_dish(dish)
		@items<<dish

	end

	def remove_dish(dish)
		@items.delete(dish)

	end

end