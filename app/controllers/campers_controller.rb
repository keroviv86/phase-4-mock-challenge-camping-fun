class CampersController < ApplicationController
    
    def index 
        render json: Camper.all, status: :ok
    end

    def show 
        camper = find_camper
        if camper
            render json: camper, serializer:CamperwithactivitiesSerializer,  status: :ok
        else  
            render json: {error: "Camper not found"}, status: :not_found
        end
    end

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end

    private

    def find_camper  
        camper=Camper.find_by(id: params[:id])
    end  

    def camper_params 
        params.permit(:id, :name, :age)
    end


end
