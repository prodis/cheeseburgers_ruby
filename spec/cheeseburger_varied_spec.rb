require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Cheeseburger do
  before(:each) do
    @cheeseburger = Cheeseburger.new
  end

  it "should be an Itarare Cheeseburger" do
    @cheeseburger = Corn.new @cheeseburger
    @cheeseburger.description.should == "Bread, Hamburger, Cheese, Corn"
    @cheeseburger.calories.should == 370
  end

  it "should be an Itarare Cheeseburger with onion rings" do
    @cheeseburger = OnionRings.new(Corn.new(@cheeseburger))
    @cheeseburger.description.should == "Bread, Hamburger, Cheese, Corn, Onion Rings"
    @cheeseburger.calories.should == 510
  end

  it "should be an Ilhéus Cheeseburger" do
    @cheeseburger = PepperSauce.new @cheeseburger
    @cheeseburger.description.should == "Bread, Hamburger, Cheese, Pepper Sauce"
    @cheeseburger.calories.should == 320
  end

  it "should be an Ilhéus Cheeseburger with onion rings and corn" do
    @cheeseburger = Corn.new(OnionRings.new(PepperSauce.new(@cheeseburger)))
    @cheeseburger.description.should == "Bread, Hamburger, Cheese, Pepper Sauce, Onion Rings, Corn"
    @cheeseburger.calories.should == 530
  end
end

