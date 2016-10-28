module Phcmembers
	class Engine < ::Rails::Engine

		# Load Security
		require 'paper_trail'

		# Main Dependencies
		require 'phcnotifi'
		require 'phctitleseo'
		
		# Data
		require 'country_select'

		# UI Dependencies
		require 'phcadmin3'
		require 'jquery-rails'
		require 'jquery-ui-rails'
		require 'sass-rails'
		require 'bootstrap-sass'
		require 'font-awesome-rails'
		require 'gravtastic'
		
		# API Dependencies
		require 'rabl'
		require 'oj'

		# Isolate Namespace
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

		# Load Requried Helper Files
		config.to_prepare do
			Phcnotifi::ApplicationController.helper(ApplicationHelper)
			Phctitleseo::ApplicationController.helper(ApplicationHelper)
		end

	end
end
