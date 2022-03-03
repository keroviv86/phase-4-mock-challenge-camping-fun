class ActivitiesController < ApplicationController
    def index 
        render json: Activity.all, status: :ok
    end

    def destroy 
        activity = find_activity
        activity.destroy
        head :no_content
    end


    private
    def find_activity
        activity = Activity.find_by(id: params[:id])
    end
end
