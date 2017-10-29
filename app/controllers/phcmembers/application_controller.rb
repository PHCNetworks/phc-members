module Phcmembers
  class ApplicationController < ActionController::Base

    # Action Filter
    before_action :phcmembers_get_member_profile_info

    # Security Filters
    protect_from_forgery with: :exception

    # Load Helpers
    helper Phctitleseo::Engine.helpers
    helper Phcnotifi::Engine.helpers

    private

    # Grab Member Information
    def phcmembers_get_member_profile_info
      @members_profile_info = Member::Profile.find(params[:profile_id])
    end

  end
end
