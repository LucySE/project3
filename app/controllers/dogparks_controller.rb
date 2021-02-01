class DogparksController < ApplicationController

  skip_before_action :verify_authenticity_token, raise: false

  def index

    render json: Dogpark.all

  end # end of index

  def search
    render json: params
  end
  def show

    @dogpark = dogpark.find(params[:id])

  end # end of class
private
  def dogpark_params
    params.require(:dogpark).permit(:dogpark_name, :latitude, :longitude, :postal_code)
  end # end of private

end
