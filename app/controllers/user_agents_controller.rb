class UserAgentsController < ApplicationController
  def index
    p request.user_agent
    @user_agent = UserAgent.order(:updated_at)
  end
end
