require './lib/customer' 

class Menu

	def initialize
		@items=[]
	end

	def items
		@items
	end

	def include_dish(dish)
		@items<<dish

	end

	def remove_dish(dish)
		@items.delete(dish)

	end

	def add_to_order(customer,dish,quantity=1)
		customer.add_to_my_order(dish,quantity)
	end
	

end