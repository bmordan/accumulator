require 'inject'

describe Array do
  let(:array) {Array.new}

  it "should respond to the accumulate method" do
    expect(array).to respond_to(:accumulate)
  end

  it "should take 2 argvs" do
    expect(lambda {array.accumulate}).to raise_error(ArgumentError)
  end

  it "should return an final result as a Fixnum" do
    expect(array.accumulate(0,array[0])).to be_a(Fixnum)
  end

end