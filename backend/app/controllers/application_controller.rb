class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  
  # protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
	before_action :authenticate_user!
	skip_before_filter :verify_authenticity_token
  
end
