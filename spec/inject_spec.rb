require 'inject'

describe Array do
  let(:array) {Array.new}

  it "should respond to the accumulate method" do
    expect(array).to respond_to(:accumulate)
  end

  it "should take 2 argvs" do
    expect(lambda {array.accumulate}).to raise_error(ArgumentError)
  end

end