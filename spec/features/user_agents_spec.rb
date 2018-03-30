require 'rails_helper'

RSpec.feature "UserAgents", type: :feature do
  describe "User agents index view" do
    let!(:user_agent) { FactoryGirl.create(:user_agent)}

    it "renders the users agents index page and shows all user agents" do
      visit user_agents_path
      expect(page).to have_content("User Agents Details")
    end

    it "updates the user agents visits count by 1 when clicked on the refresh button" do
      visit user_agents_path
      click_link "Refresh"
      expect(page).to have_content(user_agent.visits_count + 1)
    end
  end
end
