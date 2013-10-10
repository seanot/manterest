require 'spec_helper'

describe User do

  before do
    @user = User.new( username: "sumshit", email: "sumshit@dipshit.com",
                      password: "password", password_confirmation: "password")
  end

  subject { @user }

  describe 'when email is not present' do
    before { @user.email = " "}
    it { should_not be_valid }
  end

  describe 'when email format is invalid' do
    it 'should be invalid' do
      addresses = %w[user@foo,com user_at_foo.org example@user.com.]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        @user.should_not be_valid
      end
    end
  end

  describe 'when email format is valid' do
    it 'should be_valid' do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        @user.should be_valid
      end
    end
  end

  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it {should_not be_valid}
  end

  describe 'when password is not present' do
    before {@user.password = @user.password_confirmation = ' '}
    it {should_not be_valid}
  end

  describe 'when password and password_confirmation do not match' do
    before {@user.password_confirmation = 'mismatch'}
    it {should_not be_valid}
  end

  describe 'when password_confirmation is nill' do
    before {@user.password_confirmation = nil}
    it {should_not be_valid}

  end
end
