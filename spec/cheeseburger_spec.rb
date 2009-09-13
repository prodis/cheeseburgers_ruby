require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Cheeseburger, " when created" do
  it "should have default calories and description" do
    cheeseburger = Cheeseburger.new
    cheeseburger.calories.should == 300
    cheeseburger.description.should == "Bread, Hamburger, Cheese"
  end
end

