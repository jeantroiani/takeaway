require "./lib/dish"

describe Dish do
	let (:arepa) {Dish.new}
		

		it " you can add a price when initialized it" do
			arepa=Dish.new(:arepa,5)
			expect(arepa.price).to eq(5)

		end

		it" can change its price" do
			arepa=Dish.new(:arepa,5)
			arepa.update_price(6)
			expect(arepa.price).to eq 6
		end

		it'show its price' do
			arepa=Dish.new(:arepa,5)
			expect(arepa.item_name).to eq :arepa
		end

		it" can show the ingredients" do
			arepa=Dish.new(:arepa,0,"pulled_beef","black_beans","plantain")
			
			expect(arepa.ingredients).to eq ["pulled_beef","black_beans","plantain"]
		end



end