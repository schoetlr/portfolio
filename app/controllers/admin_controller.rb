class AdminController < ApplicationController
  before_action :authenticate_user

 
  USERS = { ENV["USERNAME"] => ENV["PASSWORD"] }
  #set these environment variables on heroku when deploying
  private
  
  def authenticate_user
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end
end
