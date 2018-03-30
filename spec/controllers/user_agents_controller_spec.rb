require 'rails_helper'

RSpec.describe UserAgentsController, type: :controller do
  describe "#index" do
    let!(:user_agent) { FactoryGirl.create(:user_agent) }
    before { get :index }

    it "assigns @user_agents" do
      expect(assigns(:user_agents)).to include(user_agent)
    end

    it "renders the index template" do
      expect(response).to render_template(:index)
    end

    it "has a success http status" do
      expect(response).to have_http_status(:success)
    end
  end
end
