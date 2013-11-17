require 'test_helper'

describe USNO::Imagery::Earth::Moon do
  before do
    @subject = USNO::Imagery::Earth::Moon
    @params = {
      view: "moon",
    }
  end

  describe "as a class" do
    it "initializes properly" do
      @subject.new(@params).must_respond_to :call
    end
  end

  describe "as an instance" do
    it "executes successfully" do
      result = @subject.new(@params).call
      result.successful?.must_equal true
      result.must_be_kind_of PayDirt::Result
    end
  end
end
