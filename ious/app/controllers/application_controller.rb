class ApplicationController < ActionController::Base
  @current_user = true
  protect_from_forgery
end
