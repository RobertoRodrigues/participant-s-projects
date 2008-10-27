require 'rubygems'
require 'spec'
require 'lib/count_and_say'

describe 'count-and-say' do

  it "should guive the correct, first number" do
    seq = CountAndSay.new(1)
    seq[1].should == 1
    seq.first.should == 1
  end

  it "should give the second number, when the firs is one" do
    seq = CountAndSay.new(1)
    seq[2].should == 11
  end
  
  it "should give third number , when the previous is one one" do
    seq = CountAndSay.new(1)
    seq[3].should == 21
  end
  
  it "should give the forth number, when the previous is two one" do
    seq = CountAndSay.new(1)
    seq[4].should == 1211
  end
  
  it "should count one '1' in 1" do
    number_of('1', "1").should == 1
  end
  
  it "should count two '1' in 11" do
    number_of('1', "11").should == 2
  end

  it "should count one '1' in 21" do
    number_of('1', "21").should == 1
  end

end