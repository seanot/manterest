
describe WelcomeController do
  describe 'feed' do
    it "should have the content this is your feed" do
      visit root_url
      expect(page).to have_content('this is your feed')
    end
  end
end
