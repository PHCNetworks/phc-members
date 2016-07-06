require_dependency "phcmembers/application_controller"

module Phcmembers
	class Directory::CategoriesController < ApplicationController

		# Filters
		before_action :set_paper_trail_whodunnit
		before_action :set_directory_category, only: [:edit, :update, :destroy]
		# layout 'layouts/phcmemberspro/directory/directory_all.html.erb'

		# Directory Category Index
		def index
			@directory_categories = Directory::Category.all
		end

		# Directory Category Details
		def show
			@versions = PaperTrail::Version.where(item_id: params[:id], item_type: 'Phcmembers::Directory::Category')
			@directory_category = Directory::Category.find(params[:id])
		end

		# New Directory Category
		def new
			@directory_category = Directory::Category.new
		end

		# Edit Directory Category
		def edit
		end

		# Create Action
		def create
			@directory_category = Directory::Category.new(directory_category_params)
			if @directory_category.save
				redirect_to directory_categories_path, notice: 'Category was successfully created.'
				else
					render :new
			end
		end

		# Update Action
		def update
			if @directory_category.update(directory_category_params)
				redirect_to directory_categories_path, notice: 'Category was successfully updated.'
				else
					render :edit
			end
		end

		# Delete Action
		def destroy
			@directory_category.destroy
			redirect_to directory_categories_path, notice: 'Category was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_directory_category
			@directory_category = Directory::Category.find(params[:id])
		end

		# whitelist
		def directory_category_params
			params.require(:directory_category).permit(:catname, :user_id, :membership_id, :oganization_id)
		end

	end
end