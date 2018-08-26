class StairwaysController < ApplicationController

  def index
    # @stairway = stairway_from_subdomain
    # byebug
    # @stairway = request.subdomain

    @stairway = 'test'
  end

  private

  def stairway_from_subdomain
    request.subdomain&.match(/^(\w*)-customer/)&.captures&.first
  end

end
