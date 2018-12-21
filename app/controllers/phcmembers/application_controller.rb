module Phcmembers
  class ApplicationController < ActionController::Base

    # Security Filters
    protect_from_forgery with: :exception

    # Load PHCHelpers
    helper Phctitleseo::Engine.helpers
    helper Phcnotifi::Engine.helpers

    private

    # Grab Member Information
    def phcmembers_get_member_profile_info
      # Load Member Information
      @members_profile_info = Member::Profile.find(params[:profile_id])
    end

  end
end
