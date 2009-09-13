require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Corn do
  before(:all) do
    @sandwich = mock Sandwich
    @corn = Corn.new @sandwich
  end

  it "should add corn description to sandwich description" do
    @sandwich.should_receive(:description).once.and_return("Sandwich description")
    @corn.description.should == "Sandwich description, Corn"
  end

  it "should add corn calories to sandwich calories" do
    @sandwich.should_receive(:calories).once.and_return(100)
    @corn.calories.should == 170
  end
end

describe PepperSauce do
  before(:all) do
    @sandwich = mock Sandwich
    @pepper_sauce = PepperSauce.new @sandwich
  end

  it "should add pepper sauce description to sandwich description" do
    @sandwich.should_receive(:description).once.and_return("Sandwich description")
    @pepper_sauce.description.should == "Sandwich description, Pepper Sauce"
  end

  it "should add pepper sauce calories to sandwich calories" do
    @sandwich.should_receive(:calories).once.and_return(100)
    @pepper_sauce.calories.should == 120
  end
end

describe OnionRings do
  before(:all) do
    @sandwich = mock Sandwich
    @onion_rings = OnionRings.new @sandwich
  end

  it "should add onion rings description to sandwich description" do
    @sandwich.should_receive(:description).once.and_return("Sandwich description")
    @onion_rings.description.should == "Sandwich description, Onion Rings"
  end

  it "should add onion rings calories to sandwich calories" do
    @sandwich.should_receive(:calories).once.and_return(100)
    @onion_rings.calories.should == 240
  end
end

