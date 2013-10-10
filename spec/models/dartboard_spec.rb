require 'spec_helper'

describe Dartboard do

  before do
    @dartboard = Dartboard.new(:caption => "sumshit",
                               :board_id => "1",
                               :dart_id => "1")
  end

  subject { @dartboard }

  describe "when a caption is not present" do
    before { @dartboard.caption = nil }
    it { should_not be_valid }
  end

  describe "when a board_id is not present" do
    before { @dartboard.board_id = nil }
    it { should_not be_valid }
  end

  describe "when a dart_id is not present" do
    before { @dartboard.dart_id = nil }
    it { should_not be_valid }
  end
end
