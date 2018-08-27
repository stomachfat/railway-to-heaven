class StairwaysController < ApplicationController
  def index
    @stairway = request.subdomain
  end
end
