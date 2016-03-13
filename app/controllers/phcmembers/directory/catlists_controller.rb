require_dependency "phcmembers/application_controller"

module Phcmembers
	class Directory::CatlistsController < ApplicationController

		# Filters
		layout 'layouts/phcmembers/directory/directory_all.html.erb'
		#before_action :authenticate_user!
		before_action :set_directory_catlist, only: [:show, :edit, :update, :destroy]

		# Add Directory Category Information 
		before_action :directorycategory
		def directorycategory  
			@category = Directory::Category.find(params[:category_id])
		end

		# Directory Listing Index
		def index
			category = Directory::Category.find(params[:category_id])
			@directory_catlists = category.catlists
		end

		# Show Directory Listing
		def show
			category = Directory::Category.find(params[:category_id])
			@directory_catlist = category.catlists.find(params[:id])
		end

		# New Directory Listing
		def new
			category = Directory::Category.find(params[:category_id])
			@directory_catlist = category.catlists.build
		end

		# Edit Directory Listing Action
		def edit
			category = Directory::Category.find(params[:category_id])
			@directory_catlist = category.catlists.find(params[:id])
			respond_to do |format|
				format.html # new.html.erb
				format.xml  { render :xml => @directory_catlist }
			end
		end

		# Create Directory Listing Action
		def create
			@category = Directory::Category.find(params[:category_id])
			@directory_catlist = @category.catlists.create(directory_catlist_params)
			respond_to do |format|
				if @directory_catlist.save
					format.html { redirect_to directory_category_catlists_path, notice: 'Comment for Directorycategory was Successfully Created.' }
					format.json { render action: 'show', status: :created, location: @directory_catlist }
					else
						format.html { render action: 'new' }
						format.json { render json: @directory_catlist.errors, status: :unprocessable_entity }
				end
			end
		end

		# Update Directory Listing Action
		def update
			respond_to do |format|
				if @directory_catlist.update(directory_catlist_params)
					format.html { redirect_to directory_category_catlists_path, notice: 'Comment for Directorycategory was Successfully Updated.' }
					format.json { head :no_content }
					else
						format.html { render action: 'edit' }
						format.json { render json: @directory_catlist.errors, status: :unprocessable_entity }
				end
			end
		end

		# Delete Directory Listing
		def destroy
			@category = Directory::Category.find(params[:category_id])
			@directory_catlist = @category.catlists.find(params[:id])
			@directory_catlist.destroy
			respond_to do |format|
				format.html { redirect_to directory_category_catlists_path, notice: 'Comment for Directorycategory was Successfully Deleted.'  }
				format.json { head :no_content }
			end
		end

		private

		# Common Callbacks
		def set_directory_catlist
			@directory_catlist = Directory::Catlist.find(params[:id])
		end

		# Whitelists
		def directory_catlist_params
			params.require(:directory_catlist).permit(:listing_id, :category_id)
		end

	end
end
