require "../and_call_original/calculator"

RSpec.describe "and_call_original" do
    it "trying to figure out what it does" do
      allow(Calculator).to receive(:add).and_call_original
      allow(Calculator).to receive(:add).with(2, 2).and_return(-3)
  
      expect(Calculator.add(2, 2)).to eq(4)
      expect(Calculator.add(2, 2)).to eq(-3)
    end
  end