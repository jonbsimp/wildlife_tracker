class SightingsController < ApplicationController
    
    def index
        @sightings = Sighting.all
        render json: @sightings
    end
    
    def create
        @sighting = Sighting.create(sighting_params)
        render json: @sighting
    end
    
    def show
        @sighting = Sighting.find(params[:id])
        render json: @sighting.to_json({:include => :sightings})
    end
        
    def update
        @sighting = Sighting.find(params[:id])
        @sighting.update(sighting_params)
        render json: @sighting
    end
    
    def destroy
        @sighting = Sighting.find(params[:id])
        @sighting.destroy
        render json: Sighting.all
    end

    private
    
    def sighting_params
        params.require(:sightings).permit(:date, :latitude, :longitude, :animal_id)
    end
end
