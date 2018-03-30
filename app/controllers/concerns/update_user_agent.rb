module UpdateUserAgent
  extend ActiveSupport::Concern

  included do
    before_action :add_or_update_user_agent
  end

  def add_or_update_user_agent
    # finds the user agent from database or creates one
    user_agent = UserAgent.find_or_create_by(name: request.user_agent)
    user_agent.increment!(:visits_count) # increments visits_count field by 1
    user_agent.touch if user_agent.persisted? # updates updated_at field
  end
end
