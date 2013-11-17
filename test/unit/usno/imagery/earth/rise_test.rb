require 'test_helper'

describe USNO::Imagery::Earth::Rise do
  before do
    @subject = USNO::Imagery::Earth::Rise
    @params = {
      view: "rise"
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

    it "returns the proper url" do
      result = @subject.new(@params).call.data

      result.must_include "http://api.usno.navy.mil/imagery/earth.png"
      result.must_include "?view=rise"
    end
  end
end
