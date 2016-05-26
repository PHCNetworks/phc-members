module Phcmembers
	class ApplicationController < ActionController::Base

		# Add Helpers
		helper Phctitleseo::Engine.helpers
		helper Phcnotifi::Engine.helpers

	end
end
