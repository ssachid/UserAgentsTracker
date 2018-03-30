class UserAgentsController < ApplicationController
  def index
    @user_agents = UserAgent.order(:updated_at)
    respond_to do |format|
      format.html { render :index }
    end
  end
end
