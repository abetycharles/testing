require "spec_helper"
require "zombie.rb"

describe Zombie do

  it "is named Ash" do
    zombie = Zombie.new
    zombie.name.should == "Ash"
  end

  it "has no brains" do
    zombie = Zombie.new
    zombie.brains.should < 1
  end

  it "should not be alive" do
    zombie = Zombie.new
    zombie.alive.should == false
    #zombie.alive.should be_false
  end

  it "should be rotting" do
    zombie = Zombie.new
    zombie.rotting.should be_true
  end

  it "height is greater or equal to 5" do
    zombie = Zombie.new
    zombie.height.should be >= 5
  end

  it "height should not be 4" do
    zombie = Zombie.new
    zombie.height.should_not == 4
  end

  it "is hungry" do
    zombie = Zombie.new
    zombie.should be_hungry
    #zombie.hungry?.should be_true
    #zombie.hungry?.should == true
  end

end