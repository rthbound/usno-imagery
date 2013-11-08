require 'test_helper'

describe USNO::Imagery::Earth::Set do
  before do
    @subject = USNO::Imagery::Earth::Set
  end

  describe "as a class" do
    it "initializes properly" do
      @subject.new.must_respond_to :call
    end
  end

  describe "as an instance" do
    it "executes successfully" do
      result = @subject.new.call
      result.successful?.must_equal true
      result.must_be_kind_of PayDirt::Result
    end
  end
end
