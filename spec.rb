describe Pizza do

  let(:pizza) { Pizza.new("Ham", "Awesomeness on a pizza", 4) }

  describe '#initialize' do
    it 'should error with invalid arguments' do
      expect { Pizza.new("yolo") }.to raise_error(ArgumentError)
    end

    it 'has readable arguments' do
      pizza.title.should eq "Ham"
      pizza.description.should eq "Awesomeness on a pizza"
      pizza.time_baked.should eq 4
    end
    
  end

end
