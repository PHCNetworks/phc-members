module Phcmembers
	class ApplicationController < ActionController::Base

		# Security Filters
		protect_from_forgery with: :exception
		
		# Load Helpers
		helper Phctitleseo::Engine.helpers
		helper Phcnotifi::Engine.helpers

	end
end
