module Phcmembers
	class Engine < ::Rails::Engine
		# Main Dependencies
		require 'figaro'
		require 'country_select'

		# UI Dependencies
		require 'jquery-rails'
		require 'sass-rails'
		require 'bootstrap-sass'
		require 'font-awesome-rails'
		require 'gravtastic'

		# Isolate Namespace for PHC Members
		isolate_namespace Phcmembers
		
		# Testing Generator
		config.generators do |g|
			g.test_framework :rspec,
			fixtures: true,
			view_specs: false,
			helper_specs: false,
			routing_specs: false,
			controller_specs: true,
			request_specs: false
			g.fixture_replacement :factory_girl, dir: "spec/factories"
		end
		
		# Load Helper Files (Prevents Problems)
		config.to_prepare do
			ApplicationController.helper(ApplicationHelper)
		end

	end
end
