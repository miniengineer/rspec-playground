require "../and_call_original/calculator"

RSpec.describe "and_call_original" do
  it "trying to figure out what it does" do
    allow(Calculator).to receive(:add).and_call_original
    allow(Calculator).to receive(:add).with(2, 3).and_return(-5)

    expect(Calculator.add(2, 2)).to eq(4)
    expect(Calculator.add(2, 3)).to eq(-5)
  end
end
