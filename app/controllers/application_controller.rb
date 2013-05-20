require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  include Clearance::Authentication
	protect_from_forgery


	
end
