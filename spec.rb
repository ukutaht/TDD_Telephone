require 'rspec'
require_relative "pizza"

describe Pizza do

  let(:toppings) { [Topping.new(5), Topping.new(10), Topping.new(8)] }
  let(:pizza) { Pizza.new("Ham", "Awesomeness on a pizza", toppings) }

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
      pizza.toppings.should eq toppings
    end

  end

  describe '#required_bake_time' do
    it 'returns correct time' do

      # required time is 900 + max of bake times of toppings

      pizza.required_bake_time.should eq 910
    end
  end

  describe '#bake(time)' do
    it "should get baked" do
      pizza.should respond_to(:bake)
    end

    it "should take an argument" do
      expect {pizza.bake}.to raise_error(ArgumentError)
    end

    it "should respond to time parameter" do
      expect {pizza.bake(10)}.to change{ pizza.time_baked }.by 10
    end
  end

  describe '#baked?' do
    context 'before baking' do
      it 'should be false' do
        pizza.baked?.should be_false
      end
    end

    context 'after baking' do
      before { pizza.bake(10000000) }
      it 'should be true' do
        pizza.baked?.should be_true
      end
    end
  end

end
