module Api::V1
  class PlansController < ApplicationController
    def index
  	  @plans = Plan.order("created_at DESC")
  	  render json: @plans
    end

    def create
    	@plan = Plan.create(plan_params)
    	render json: @plan
    end

    def update
    	@plan =Plan.find(params[:id])
    	@plan.update_attributes(plan_params)
    	render json: @plan
    end

    private

    def plan_params
    	params.require(:plan).permit(:title, :body)
    end
  end
end
