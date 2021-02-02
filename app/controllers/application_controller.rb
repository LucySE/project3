class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

include Knock::Authenticable

  # before_action :fetch_user
  # include Knock::Authenticable
    #check if the user_id in the session hash is the ID of the real user in our tables
end #end of knock
