module Phcmembers
	class ApplicationController < ActionController::Base

		# Security Filters
		protect_from_forgery with: :exception

		# Grab Member Information
		def get_member_profile_info  
			@members_profile_info = Member::Profile.find(params[:profile_id])
		end

		# Load Helpers
		helper Phctitleseo::Engine.helpers
		helper Phcnotifi::Engine.helpers

	end
end
