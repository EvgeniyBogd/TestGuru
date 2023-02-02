class BadgesController < ApplicationController
  

  # GET /badges or /badges.json
  def index
    @badges = Badge.all
  end

  
end
