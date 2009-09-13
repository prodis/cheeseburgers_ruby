require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Sandwich do
  before(:all) do
    @real_sandwich = mock Cheeseburger
    @sandwich = Sandwich.new @real_sandwich
  end

  it "should call description in real sandwich" do
    @real_sandwich.should_receive(:description).once.and_return("Sandwich description")
    @sandwich.description.should == "Sandwich description"
  end

  it "should call calories in real sandwich" do
    @real_sandwich.should_receive(:calories).once.and_return(150)
    @sandwich.calories.should == 150
  end
end

