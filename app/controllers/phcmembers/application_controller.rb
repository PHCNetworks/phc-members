module Phcmembers
	class ApplicationController < ActionController::Base

		# Add Helpers
		helper Phctitler::Engine.helpers
		helper Phcnotifi::Engine.helpers

	end
end
