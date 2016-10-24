require_relative 'testdesign'

describe Computer do
  let(:instance) { Computer.new }

	it "splits answer and user_input matches into array and joins matching letters as string seperated by spaces" do
		expect(instance.break_even).to eq "  l l o"
	end


	it "takes user input and returns keep trying until user input = correct word" do
		instance.break_even
		expect(instance.method_guesser).to eq nil
	end
end 
