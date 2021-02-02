class DogparksController < ApplicationController

  skip_before_action :verify_authenticity_token, raise: false

  def index
    dogparks = Dogpark.all
    render json: dogparks.to_json
  end
  # def create
  #   dogpark = dogpark.create dogpark_params
  #
  #   redirect_to dogpark_path(dogpark.id)
  # end
  def search
    dogpark = Dogpark.near(
      params[:postcode] + ', NSW Australia',
      params[:radius] || 10,
      units: :km
    )
    #if not radius not specified, params radius returns nil
    #||Because we have 5, if the radius is empty, it will default to the 5 because of the logic of the || "or" expression. "or" will always evaluate to the truthy thing. 
    render json: dogpark.to_json
  end
end #end of class
