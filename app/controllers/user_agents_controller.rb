class UserAgentsController < ApplicationController
  def index
    @user_agents = UserAgent.order(:updated_at)
    respond_to do |format|
      format.html { render :index }
      format.js { render partial: "user_agents/list"}
    end
  end
end
