require "./lib/order"

describe Order do
	let (:order) 		{Order.new   					 }
	let (:dish) 		{double :dish, price: 5}
	let (:dish_2) 	{double :dish, price: 5}
	let (:customer)	{double :customer			 }
	
		it "has an empty list of dishes when initialize" do
			expect(order.list).to eq []
		end

		it "can accept a list of dishes from the menu" do
			order.add_dish(dish,dish_2)
			expect(order.list).to eq [dish,dish_2]
		end
			
		it "can remove dishes from the menu" do
			order.add_dish(dish)
			order.remove_dish(dish)
			expect(order.list).to eq []
		end

		it"shows the amount of dishes ordered" do
			order.add_dish(dish,dish_2)
			expect(order.amount_of_dishes).to eq 2
		end


		it"shows the total amount to pay for the food ordered" do
			order.add_dish(dish)
			expect(order.amount_to_pay).to eq 5
		end
		it"shows the name of the item and the amount repeated" do
			order.add_dish(dish)
			expect(order.quantity_of_each).to eq({dish => 1})
		end

		it'creates a new order for a costumer' do
			customer = double :customer
			
			expect(customer).to receive (:new_order).with(order)



		end

end

