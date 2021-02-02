class ApplicationController < ActionController::API

  include Knock::Authenticable
    #check if the user_id in the session hash is the ID of the real user in our tables
end #end of knock
