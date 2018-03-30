require 'rails_helper'

RSpec.feature "Pages", type: :feature do
  describe "Visit root path" do
    it "renders the index view" do
      visit root_path
      expect(page).to have_content("Hello Guest!")
    end
  end
end
