class SignupsController < ApplicationController
    def create 
        createSignUp = Signup.create!(signup_params)
        render json: createSignUp, status: :created

    end 

    private
    def signup_params
        params.permit(:camper_id, :activity_id, :time)
    end
end
