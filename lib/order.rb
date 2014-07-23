require './lib/dish'
require './lib/menu'
require './lib/customer'

class Order

	def initialize
		@created_at = Time.now
		@list=[]
	end

	def list
		@list
	end

	def add_dish(*dish)
		dish.each{|dish|@list<<dish}
	end

	def remove_dish(dish)
		@list.delete(dish)
	end

	def amount_of_dishes
		@list.count	
	end

	def amount_to_pay
		@total=[]
		@list.each{|dish| @total<<dish.price}
		@total.inject{|mem,num|mem+num}
	end

	def quantity_of_each
		frequency=Hash.new(0)
		@list.each {|word|frequency[word]+=1}
		frequency
	end

end
