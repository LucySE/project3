class DogparksController < ApplicationController

  skip_before_action :verify_authenticity_token, raise: false
