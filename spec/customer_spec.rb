require "./lib/customer"

describe Customer do
	
	let (:customer) {Customer.new(:Jean)}
		
		it "can store a name" do
			expect(customer.name).to eq(:Jean)
		end

		it "can store a phone number" do
			expect(customer.phone_number(01234)).to eq 01234
      
		end

		it"can create a new  order" do
		# expect(customer).to receive instance_of_class(Order)
		customer.new_order(:order)
		expect(customer.order).to eq :order
		end

		it "can add to my order one dish" do
			dish = double :dish
			order = double :order
			customer.new_order(order)

			expect(order).to receive(:add_dish).with(dish)

			customer.add_to_my_order(dish,quantity=1)
		end

			it "can add to my order two dishes" do
		dish = double :dish
		order = double :order
		customer.new_order(order)
		expect(order).to receive(:add_dish).exactly(2).times.with(dish)
		# expect(order).to receive(:add_dish).exactly(2).times.with(dish)
		customer.add_to_my_order(dish,quantity=2)
	
		end



end