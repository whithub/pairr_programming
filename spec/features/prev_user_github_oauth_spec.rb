require "rails_helper"

describe 'testing oauth with github,', :omniauth, type: :feature do
  context "as a previously signed in user," do
    before(:each) do
      previous_user_signin
      click_on 'Logout'
    end

    it "when I login for second or more times w/ valid login info, I should be taken directly to my dashboard" do
      auth_mock
      click_on "Login with Github"

      expect(current_path).to eq(dashboard_path)
    end

    it "handles invalid authentication" do
      OmniAuth.config.mock_auth[:github] = :invalid_credentials
      visit '/auth/github'

      expect(page).to have_content("Authentication error: Invalid credentials")
    end

    it "logs out successfully" do
      auth_mock
      click_on "Login with Github"

      expect(page).to have_content("Logout")

      click_on 'Logout'
      expect(page).to have_content("Login with Github")
      expect(current_path).to eq("/")
    end
  end
end

