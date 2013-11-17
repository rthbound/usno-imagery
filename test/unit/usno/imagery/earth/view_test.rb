require 'test_helper'

describe USNO::Imagery::Earth::View do
  before do
    @subject = USNO::Imagery::Earth::View
    @params = {
      time: nil,
      view: "rise",
    }
  end

  describe "as a class" do
    it "initializes properly" do
      @subject.new(@params).must_respond_to :call
    end

    it "errors when initialized without required dependencies" do
      -> { @subject.new(@params.reject { |k| k.to_s == 'view' }) }.must_raise RuntimeError
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
