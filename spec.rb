describe Pizza do

  let(:pizza) { Pizza.new("Ham", "Awesomeness on a pizza") }

  describe '#initialize' do
    it 'should error with invalid arguments' do
      expect { Pizza.new("yolo") }.to raise_error(ArgumentError)
    end

    it 'has title' do
      pizza.title.should eq "Ham"
    end

    it 'has description' do
      pizza.description.should eq "Awesomeness on a pizza"
    end

    it 'defaults time_baked to 0' do
      pizza.time_baked.should eq 0
    end

    it 'has many toppings' do
      pizza.should_recieve(:toppings).and_return([Topping.new])
      pizza.toppings.should eq [Topping.new]
    end

  end

end
