require "spec_helper"
require "tweet.rb"

describe Tweet do
  it "can set status" do
    tweet = Tweet.new(status: "Nom nom nom")
    tweet.status.should == "Nom nom nom"
  end

  it "without a leading @ symbol should be public" do
    tweet = Tweet.new(status: "Nom nom nom")
    tweet.should be_public
  end

  it "truncates the status to 140 xters" do
    tweet = Tweet.new(status: "Nom nom nom" * 100)
    tweet.status.length.should be <= 140
  end
end