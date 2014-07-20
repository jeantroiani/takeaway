require "./lib/dish"

describe Dish do
	let (:arepa) {Dish.new}
		

		it " you can add a price when initialized it" do
			arepa=Dish.new(5)
			expect(arepa.price).to eq(5)

		end

		it" can change its price" do
			arepa=Dish.new(5)
			arepa.update_price(6)
			expect(arepa.price).to eq 6
		end




end