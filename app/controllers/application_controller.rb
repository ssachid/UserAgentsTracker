class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :add_or_update_user_agent

  private
  def add_or_update_user_agent
    # finds the user agent from database or creates one
    user_agent = UserAgent.find_or_create_by(name: request.user_agent)
    user_agent.increment!(:visits_count) # increments visits_count field by 1
    user_agent.touch # updates updated_at field
  end
end
