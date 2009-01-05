class ClientController < ApplicationController

  before_filter :setup
  before_filter :require_user

  # Run before each action
  def setup
    @next_lunch = Date.today
  end

  # Show dashboard on login
  def main
  end


  # Show vote screen and process vote if request.post?
  def vote_for_next_lunch
    
  end

end
