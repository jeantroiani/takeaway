require './lib/order'
require 'time'
require './lib/twillio_message'

class Customer

	attr_accessor :order

	def initialize(name)
		@name=name
	end
	
	def name
		@name
	end

	def phone_number(phone_number)
		@phone=phone_number
	end

	def new_order(order)
		@order = order
	end
	
	def add_to_my_order(dish,quantity)
		quantity.times { order.add_dish(dish) }  
	end

	def place_order(price_est)
		raise "Sorry, that is not the price you have to pay" unless @order.amount_to_pay == price_est
		send_message(self)

	end


end
