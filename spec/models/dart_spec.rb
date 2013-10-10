require 'spec_helper'

describe Dart do

  before do
    @dart = Dart.new(image_url: 'http://manshit.com/images/ribeye.png',
                      link_url: 'http://manshit.com', user_id: 1)
  end

  subject { @dart }

  describe 'when image URL is not present' do
    before {@dart.image_url = ' '}
    it { should_not be_valid }
  end

  describe 'when image is of valid format' do
    it 'should be valid' do
      images = %w[.png, .jpg, .jpeg, .gif, .mp4]
      images.each do |image|
        @dart.image_url = "http://example.com/media#{image}"
        @dart.should be_valid
      end
    end

    it 'should not be valid' do
      images = %w[.doc, .pdf]
      images.each do |image|
        @dart.image_url = "http://example.com/media#{image}"
        @dart.should_not be_valid
      end
    end

  end

  describe 'when link URL is not present' do
    before {@dart.link_url = ' '}
    it { should_not be_valid }
  end

  describe 'when user_id is nil' do
    before {@dart.user_id = nil}
    it {should_not be_valid}
  end
end
