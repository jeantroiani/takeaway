require "./lib/menu"

describe Menu do
	let (:menu) {Menu.new}
		
		it "can store dishes " do
			expect(menu.items).to eq []

		end 

		it "can add dishes " do
			dish = double :dish
			menu.add_dish(dish)
			expect(menu.items).to eq [dish]

		end 

			it "can remove dishes " do
			dish = double :dish
			menu.add_dish(dish)
			menu.remove_dish(dish)
			expect(menu.items).to eq []

		end 



end