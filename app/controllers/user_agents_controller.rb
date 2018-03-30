class UserAgentsController < ApplicationController
  def index
    @user_agents = UserAgent.order(:updated_at)
  end
end
