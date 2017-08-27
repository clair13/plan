module Api::V1
  class PlansController < ApplicationController
    def index
  	  @plans = Plan.all
  	  render json: @plans
    end
  end
end
