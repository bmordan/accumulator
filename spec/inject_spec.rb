require 'inject'

describe Array do

  let(:array      ) { [1,2,3,4,5]                                           }
  let(:String     ) { double :String                                        }
  let(:block      ) { Proc.new { |accumulate, element| accumulate=3 }       }
  let(:bang       ) { Proc.new { |accumulate, element| accumulate   }       }
  let(:accumulate ) { Proc.new { |accumulate, element| accumulate+=element }}

  it "should respond to the accumulate method" do
    expect(array).to respond_to(:accumulate)
  end

  it "should take an argv" do
    expect(lambda {array.accumulate}).to raise_error(RuntimeError)
  end

  it "should take 2 argvs one of which is a block" do
    expect(array.accumulate(3, &block)).to eq(3)
  end

  it "should asign the first in the array as a default" do
    expect(array.accumulate(&bang)).to eq(1)
  end

  it "should call passed in block" do
    expect(array.accumulate(0, &accumulate)).to eq 15
  end


end