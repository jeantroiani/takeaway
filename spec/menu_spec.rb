require "./lib/menu"

describe Menu do
	let (:menu) {Menu.new}
		
		it "can store dishes " do
			expect(menu.items).to eq []
		end 

		it "can include dishes " do
			dish = double :dish 
			menu.include_dish(dish)
			expect(menu.items).to eq [dish]
		end 

		it "can remove dishes " do
			dish = double :dish
			menu.include_dish(dish)
			menu.remove_dish(dish)
			expect(menu.items).to eq []
		end 

		it "has items and those can be added to an order" do
			dish = double :dish
			customer = double :customer
			expect(customer).to receive(:add_to_my_order).with(dish,1)
			menu.add_to_order(customer,dish,1)
		end



end